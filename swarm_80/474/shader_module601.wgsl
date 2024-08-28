struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: array<Struct_1, 29>;

var<private> global2: vec2<i32> = vec2<i32>(-8850i, -34883i);

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    global0 = !vec4<bool>(!(!global0.x), (global0.x || !arg_2.a) && true, abs(_wgslsmith_mod_u32(arg_1.x, arg_0.x)) < max(countOneBits(49725u), ~arg_1.x), true);
    var var_0 = Struct_5(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(803f, _wgslsmith_f_op_f32(f32(-1f) * -260f)), -708f)), Struct_2(~vec3<i32>(global2.x, -global2.x, 35921i), true || all(!vec4<bool>(arg_2.b.x, false, arg_2.b.x, global0.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-263f)), _wgslsmith_f_op_f32(min(-1286f, -1002f))), -455f, -2398f), vec3<f32>(-2108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1795f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(644f))))))));
    var var_1 = ~vec4<i32>(~1i & _wgslsmith_div_i32(var_0.c.a.x, -1i), abs(2147483647i), 1i, var_0.c.a.x);
    let var_2 = vec3<u32>(min(select(reverseBits(u_input.a.x), 0u ^ u_input.b, all(global0.xxx)), ~(~82175u)), abs(_wgslsmith_mult_u32(0u, ~4294967295u)), ~(~_wgslsmith_sub_u32(arg_0.x, arg_1.x))) ^ vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_0, arg_1) | u_input.a.x, ~(~arg_0.x)), arg_1.x);
    let var_3 = true;
    return global2.x;
}

fn func_2() -> bool {
    global2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-func_3(u_input.a, u_input.a, global1[_wgslsmith_index_u32(~30991u, 29u)]), 1i), (_wgslsmith_sub_vec2_i32(~vec2<i32>(global2.x, global2.x), countOneBits(vec2<i32>(37883i, 1i))) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-19887i, -9627i), ~vec2<i32>(global2.x, global2.x), select(vec2<i32>(global2.x, global2.x), vec2<i32>(29111i, 1i), vec2<bool>(false, global0.x)))) >> (max(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 74257u) >> (u_input.a % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 31779u), vec2<u32>(4294967295u, 7760u))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 10132u)) ^ u_input.a) % vec2<u32>(32u)));
    global0 = select(select(vec4<bool>(any(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, global0.x), global0.wxz)), false, global0.x || true, global0.x), !vec4<bool>(!global0.x, true, global0.x | false, true), all(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, true, true, true), false))), select(select(!(!vec4<bool>(global0.x, global0.x, true, global0.x)), select(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, false, global0.x, false)), !vec4<bool>(global0.x, true, global0.x, true), !global0.x), select(!vec4<bool>(false, false, global0.x, global0.x), !vec4<bool>(false, global0.x, true, false), !vec4<bool>(true, global0.x, false, global0.x))), !select(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, false, true, global0.x), false), select(vec4<bool>(global0.x, true, true, true), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, global0.x)), vec4<bool>(global0.x, false, true, false)), false), global0.x);
    let var_0 = Struct_3(_wgslsmith_div_u32(u_input.a.x, abs(u_input.a.x)));
    let var_1 = -global2.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-962f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1225f)), _wgslsmith_f_op_f32(-1000f * 655f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-449f, 253f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(766f)))))));
    return (global2.x | var_1) > reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(6934i, 2147483647i & var_1, -17018i, -2147483647i), firstLeadingBit(vec4<i32>(global2.x, 48681i, var_1, -17334i)) & (vec4<i32>(var_1, 2147483647i, var_1, 6140i) >> (vec4<u32>(var_0.a, var_0.a, 35697u, u_input.a.x) % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> f32 {
    global0 = vec4<bool>(any(vec4<bool>(all(global0.yxz), arg_0.e.b.x, true, true)), true, func_2(), all(select(!vec4<bool>(global0.x, arg_0.e.a, true, false), vec4<bool>(true, true, true, true), !arg_0.c.x)) | false);
    let var_0 = global1[_wgslsmith_index_u32(~24187u, 29u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-325f, 1825f)))));
    let var_2 = arg_0.a & firstTrailingBit(vec4<u32>(4294967295u, 10946u, 73341u, _wgslsmith_dot_vec2_u32(arg_0.a.xx, vec2<u32>(23955u, u_input.b))) << (select(~arg_0.a, ~vec4<u32>(4294967295u, arg_1.x, 0u, 30635u), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, true, arg_0.c.x, false), vec4<bool>(var_0.a, global0.x, true, true))) % vec4<u32>(32u)));
    global0 = select(vec4<bool>(any(vec4<bool>(var_0.b.x, false | global0.x, false, global0.x)), func_2() & (max(66737i, global2.x) > _wgslsmith_sub_i32(-2147483647i, -1i)), any(select(vec2<bool>(var_0.a, false), vec2<bool>(arg_0.e.b.x, false), func_2())), global0.x), !vec4<bool>(true & (true & global0.x), var_0.b.x, func_2(), !any(arg_0.d)), !(!any(vec3<bool>(arg_0.d.x, true, true))) || ((_wgslsmith_f_op_f32(ceil(-502f)) == -2106f) != (~global2.x <= -2147483647i)));
    return _wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(120f + var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, false), !vec4<bool>(global0.x, true, false, global0.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 1664f)), _wgslsmith_f_op_f32(select(1000f, -399f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), u_input.a.x, var_0.xww, global0.yx, Struct_1(var_0.x, global0.yx)), firstTrailingBit(vec2<u32>(0u, 28421u)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-631f)) + _wgslsmith_f_op_f32(trunc(142f)))), any(vec3<bool>(var_0.x && global0.x, -34366i != global2.x, true)))));
    var var_2 = vec3<u32>(2800u >> (_wgslsmith_div_u32(0u, ~(~u_input.a.x)) % 32u), u_input.b, u_input.a.x);
    var var_3 = firstLeadingBit(countOneBits(_wgslsmith_mult_vec2_u32(~var_2.yy, countOneBits(vec2<u32>(var_2.x, 35207u))) | vec2<u32>(_wgslsmith_mod_u32(u_input.b, 1u), firstLeadingBit(17268u))));
    let var_4 = select(!vec4<bool>(true, all(!vec3<bool>(false, var_0.x, true)), any(select(vec2<bool>(true, global0.x), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, global0.x))), !(var_0.x && var_0.x)), !(!(!(!vec4<bool>(true, global0.x, var_0.x, true)))), any(vec2<bool>(!(global0.x | global0.x), (global2.x ^ global2.x) > global2.x)));
    global3 = global2.x ^ 78182i;
    var_3 = (u_input.a | ~vec2<u32>(48178u, var_2.x)) << (vec2<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.a.x) & u_input.b, 4294967295u << (var_2.x % 32u)) % vec2<u32>(32u));
    let var_5 = -countOneBits(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(global2.x, 2147483647i, global2.x, -1i)), vec4<i32>(-1i, global2.x, global2.x, global2.x) << (vec4<u32>(0u, 4294967295u, var_3.x, 37957u) % vec4<u32>(32u))) ^ vec4<i32>(global2.x ^ 1i, global2.x >> (1u % 32u), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-16712i, -3083i, global2.x, -1i), vec4<i32>(global2.x, 1i, 1i, global2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1, var_1, _wgslsmith_div_f32(-913f, _wgslsmith_f_op_f32(min(1454f, _wgslsmith_f_op_f32(func_1(Struct_4(vec4<u32>(var_2.x, var_3.x, 0u, 0u), var_2.x, vec3<bool>(false, false, var_0.x), vec2<bool>(var_0.x, false), global1[_wgslsmith_index_u32(var_3.x, 29u)]), var_2.xx)))))), -reverseBits(_wgslsmith_div_i32(max(global2.x, var_5.x), firstLeadingBit(var_5.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(f32(-1f) * -360f), func_2())) - var_1), _wgslsmith_f_op_f32(-var_1), 639f), -(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global2.x, global2.x), _wgslsmith_mod_i32(var_5.x, -3627i)) | _wgslsmith_add_i32(1512i, 1i)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_3.x, var_2.x), ~vec3<u32>(0u, 22232u, 5321u))), var_3.x, 0u));
}

