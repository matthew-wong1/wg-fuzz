struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32> = vec2<i32>(-67430i, -30440i);

var<private> global2: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(37385u, 1u, 0u), vec3<u32>(4294967295u, 32214u, 4294967295u), vec3<u32>(6070u, 26425u, 6000u), vec3<u32>(0u, 10318u, 3102u), vec3<u32>(1u, 1u, 40894u), vec3<u32>(0u, 4294967295u, 48489u), vec3<u32>(53367u, 14519u, 4294967295u), vec3<u32>(2542u, 54157u, 0u), vec3<u32>(47380u, 0u, 41728u), vec3<u32>(0u, 0u, 10353u), vec3<u32>(76517u, 0u, 0u), vec3<u32>(1u, 52154u, 10031u), vec3<u32>(79422u, 4294967295u, 1458u), vec3<u32>(0u, 19834u, 65526u), vec3<u32>(10883u, 1u, 45338u), vec3<u32>(57949u, 41728u, 4294967295u), vec3<u32>(61169u, 0u, 1u));

var<private> global3: Struct_4;

var<private> global4: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(0i, 22255i), vec2<i32>(i32(-2147483648), 9617i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -18132i), vec2<i32>(0i, 0i), vec2<i32>(-45889i, 1i), vec2<i32>(1i, 0i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> vec3<bool> {
    global4 = array<vec2<i32>, 7>();
    global1 = u_input.a;
    global4 = array<vec2<i32>, 7>();
    let var_0 = -2147483647i == (0i << (~global3.c.c.c.a % 32u));
    let var_1 = global3.b.x;
    return global3.c.b.d.wxz;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_u32(min(~0u & ~arg_1.a, arg_3), ~abs(1u));
    let var_1 = global3.c.c.d.x;
    let var_2 = vec3<bool>(any(vec3<bool>(select(global3.a, false, true), all(vec4<bool>(global3.c.b.d.x, false, true, true)), any(vec4<bool>(global3.b.x, global3.a, false, global3.c.c.a.x)))) && global3.b.x, !(!(!global3.c.c.a.x)) & (arg_0.a <= ~arg_2), global3.a);
    let var_3 = arg_1;
    global4 = array<vec2<i32>, 7>();
    return _wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(arg_2, 18u)], _wgslsmith_mod_vec3_u32(max(vec3<u32>(1u, 16943u, ~global3.c.c.c.a), reverseBits(vec3<u32>(arg_3, 38140u, 20329u))), reverseBits(vec3<u32>(arg_2, ~4294967295u, abs(0u)))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    var var_0 = vec3<bool>(true, true, all(!(!vec3<bool>(global3.b.x, arg_3, arg_2.a.x))));
    var var_1 = ~abs(~global2[_wgslsmith_index_u32(arg_0.c.c.a, 18u)]);
    var var_2 = vec4<bool>(all(func_2()), !(!arg_0.c.a.x), true, !global3.a);
    let var_3 = Struct_5(func_3(arg_2.c, Struct_1(arg_2.c.a), arg_0.b.e, ~1u));
    var var_4 = -449f;
    return Struct_3(1f, arg_0.c, Struct_2(vec2<bool>(!arg_0.c.d.x, false), firstLeadingBit(arg_2.b), arg_2.c, vec4<bool>(u_input.a.x < reverseBits(-14761i), !(-2147483647i == arg_0.c.b.x), !all(vec3<bool>(true, global3.c.b.a.x, var_0.x)), !(31612u < var_3.a.x)), countOneBits(~_wgslsmith_sub_u32(0u, 0u))), global3.c.b.b.x, arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global3.a, !vec3<bool>(false, global3.b.x, !(2147483647i >= global3.c.d)), func_1(global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) * global3.c.a), global3.c.c, any(!(!vec3<bool>(global3.b.x, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x + global3.d.x)))), 280f, _wgslsmith_f_op_f32(495f + global3.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.d.x)))));
    let var_1 = abs(vec2<i32>(~_wgslsmith_clamp_i32(-38934i >> (global3.c.b.c.a % 32u), min(14919i, global1.x), _wgslsmith_div_i32(1i, -11729i)), -17266i));
    global3 = Struct_4(true, vec3<bool>(true, true, true), var_0.c, _wgslsmith_f_op_vec4_f32(max(global3.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.d))))));
    let var_2 = 1u >> (global3.c.c.e % 32u);
    let var_3 = Struct_5(vec3<u32>(~abs(global3.c.e.a), select(global3.c.c.e, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.c.c.c.a, 4294967295u, 10598u)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 18u)]), all(vec4<bool>(true, true, global3.c.c.d.x, var_0.c.b.a.x))), _wgslsmith_sub_u32(~global3.c.c.e, ~_wgslsmith_add_u32(0u, global3.c.b.e))));
    global3 = Struct_4(true, vec3<bool>(global3.c.b.a.x, true & !any(vec4<bool>(var_0.b.x, var_0.b.x, false, true)), !func_1(var_0.c, _wgslsmith_f_op_f32(select(var_0.d.x, -655f, false)), Struct_2(var_0.b.xx, vec2<i32>(-69948i, -2147483647i), var_0.c.e, var_0.c.c.d, 14825u), 1u >= var_0.c.c.e).c.a.x), var_0.c, var_0.d);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.a, _wgslsmith_f_op_f32(519f - global3.d.x))));
}

