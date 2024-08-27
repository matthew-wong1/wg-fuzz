struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: bool,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<vec3<u32>, 15>;

var<private> global2: array<f32, 10> = array<f32, 10>(-963f, 1529f, -108f, 1023f, -1000f, 1083f, 604f, -1112f, -991f, 894f);

var<private> global3: array<vec2<u32>, 22>;

var<private> global4: array<vec3<f32>, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = Struct_5(-28851i, max(max(u_input.d ^ u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 34817u)), 68837u | u_input.d) < ~0u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f * global2[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 10u)]))))) >= _wgslsmith_f_op_f32(f32(-1f) * -1867f), global2[_wgslsmith_index_u32(~(~(~u_input.d)) ^ 1u, 10u)], u_input.c.xx);
    var var_1 = abs(reverseBits(vec4<u32>(~9005u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b)) % 32u), 21498u, _wgslsmith_mult_u32(u_input.d, 35101u), 4294967295u)));
    global3 = array<vec2<u32>, 22>();
    return var_0.b & (false || any(select(vec3<bool>(var_0.c, var_0.b, false), vec3<bool>(true, true, var_0.c), select(vec3<bool>(false, var_0.c, false), vec3<bool>(true, false, var_0.b), vec3<bool>(true, false, var_0.c)))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1433f, arg_3.x)), 230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(-1140f)))) + _wgslsmith_f_op_vec3_f32(max(global4[_wgslsmith_index_u32(firstLeadingBit(countOneBits(~u_input.d)), 7u)], arg_3)));
    let var_1 = u_input.c;
    var var_2 = select(select(vec2<bool>(global2[_wgslsmith_index_u32(~15827u, 10u)] > arg_3.x, select(arg_0.a.x == true, true, true)), vec2<bool>(true, !arg_0.c.x), select(arg_0.c.zy, arg_0.a.xx, !(!vec2<bool>(arg_0.b, true)))), vec2<bool>(any(select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.c.x), arg_0.c.zwx, vec3<bool>(arg_0.d.c, arg_0.b, false))) & arg_0.a.x, true), arg_0.a.zw);
    let var_3 = Struct_4(u_input.d, Struct_1(arg_0.d.a, _wgslsmith_div_vec2_f32(arg_3.xz, arg_3.xz), var_1.x > (var_1.x ^ arg_2), arg_0.d.b, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)] * -1907f)), Struct_2(vec4<bool>(!func_3(), false, !(!arg_0.c.x), false), Struct_1(~vec2<i32>(1i, 34568i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(39673u, 10u)], -119f))), var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.xz) * arg_3.xy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(round(-2848f)))), ~(~firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.d, 1u, 1u), select(~u_input.d, ~u_input.d, true))));
    var_2 = vec2<bool>(any(vec3<bool>(var_3.c.b.c, var_3.a > _wgslsmith_sub_u32(u_input.d, var_3.a), all(select(vec2<bool>(false, arg_0.b), var_3.c.a.xx, false)))), !var_3.b.c);
    return -1852f;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), arg_0.c, vec4<bool>(arg_0.c, false, arg_0.c, true), arg_0), arg_0.d.x, u_input.e.x, global4[_wgslsmith_index_u32(3282u, 7u)])))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-129f, global2[_wgslsmith_index_u32(4294967295u, 10u)]) * _wgslsmith_f_op_f32(abs(-1177f))))));
    global0 = array<Struct_1, 7>();
    var var_1 = ~_wgslsmith_sub_u32(u_input.b, ~4294967295u);
    let var_2 = ~((u_input.a & ~_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)])) >> (u_input.a % vec3<u32>(32u)));
    global3 = array<vec2<u32>, 22>();
    return Struct_2(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~0u), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(4294967295u, u_input.d)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 1u), vec4<u32>(0u, 56847u, 1u, u_input.b)))), 7u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(~firstLeadingBit(u_input.a), global1[_wgslsmith_index_u32(20886u, 15u)], any(vec2<bool>(true, arg_0.c))), vec3<u32>(min(var_2.x, ~u_input.b), u_input.d, _wgslsmith_sub_u32(u_input.a.x, u_input.b))), 22u)], var_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = ~(~(~arg_0.c.x));
    global1 = array<vec3<u32>, 15>();
    let var_1 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_clamp_u32(23918u, u_input.b, 1u)) << (1u % 32u)), 7u)];
    let var_2 = arg_0;
    let var_3 = Struct_5(1i, any(arg_0.a), func_1(func_1(Struct_1(vec2<i32>(12442i, u_input.c.x), var_1.b, true, var_2.b.d, var_2.b.e)).b).b.d.x < _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~arg_1, 10u)]))), var_2.b.e, vec2<i32>(arg_0.b.a.x | _wgslsmith_add_i32(~(-2147483647i), var_1.a.x | 1i), u_input.c.x));
    return Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.d * arg_2.x), arg_0.b.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, global2[_wgslsmith_index_u32(1u, 10u)])))) * vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(75107u, 10u)]) * -398f))), !(!((var_3.d < arg_2.x) | all(arg_0.a.yx))), var_2.b.d, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.b, func_4(func_1(Struct_1(_wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(-1i, -19131i)), vec2<f32>(340f, global2[_wgslsmith_index_u32(u_input.d, 10u)]), false, _wgslsmith_div_vec2_f32(vec2<f32>(675f, global2[_wgslsmith_index_u32(u_input.b, 10u)]), vec2<f32>(-209f, global2[_wgslsmith_index_u32(34458u, 10u)])), -610f)), ~(~(~u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)] + global2[_wgslsmith_index_u32(u_input.b, 10u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 10u)]), global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), _wgslsmith_f_op_f32(min(1496f, _wgslsmith_f_op_f32(f32(-1f) * -422f))), 736f)), func_1(func_4(func_1(func_4(Struct_2(vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(u_input.b, 7u)], u_input.a.yx, 6910u), u_input.a.x, vec4<f32>(836f, 237f, global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]))), 4294967295u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(449f, global2[_wgslsmith_index_u32(29153u, 10u)], -719f, 1000f))))));
    var var_1 = Struct_5(u_input.c.x, false, any(vec2<bool>(true, var_0.b.c)) == var_0.b.c, _wgslsmith_f_op_f32(var_0.b.d.x - _wgslsmith_f_op_f32(-900f - var_0.c.b.e)), var_0.c.b.a);
    var var_2 = var_0.c.b;
    let var_3 = !(!(!var_0.c.a.xxx));
    let var_4 = Struct_1(vec2<i32>(~reverseBits(u_input.c.x >> (34197u % 32u)), _wgslsmith_mult_i32(-48530i, abs(-39140i))), _wgslsmith_f_op_vec2_f32(func_1(func_1(func_1(var_0.b).b).b).b.b - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.d)))), select(true, var_3.x, all(!var_0.c.a.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.b.d - var_2.b) - var_0.b.b))), -466f);
    let var_5 = Struct_4(~(var_0.c.c.x | 0u), Struct_1(func_1(Struct_1(vec2<i32>(11541i, var_4.a.x) << (global3[_wgslsmith_index_u32(u_input.b, 22u)] % vec2<u32>(32u)), var_2.b, var_0.b.c | var_4.c, vec2<f32>(-456f, var_2.b.x), _wgslsmith_f_op_f32(min(227f, 1358f)))).b.a, _wgslsmith_f_op_vec2_f32(step(var_2.d, var_4.d)), !(all(var_0.c.a) && true), vec2<f32>(var_4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1335f)), _wgslsmith_f_op_f32(f32(-1f) * -291f)), func_1(Struct_1(~vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_f_op_vec2_f32(-var_0.b.d), (var_2.b.x <= -548f) || !var_1.c, _wgslsmith_f_op_vec2_f32(var_4.b - _wgslsmith_f_op_vec2_f32(-var_0.b.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-363f, var_4.b.x)), _wgslsmith_f_op_f32(min(var_0.c.b.b.x, 310f))))));
    global4 = array<vec3<f32>, 7>();
    let var_6 = var_5.c.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec3<u32>(49852u, var_0.c.c.x & var_0.a, 1u)), countOneBits(countOneBits(vec4<i32>(_wgslsmith_clamp_i32(var_2.a.x, -50209i, var_0.c.b.a.x), var_5.b.a.x, countOneBits(u_input.e.x), ~var_5.b.a.x))), 849f);
}

