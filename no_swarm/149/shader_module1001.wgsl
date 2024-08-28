struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global1: Struct_5 = Struct_5(6602i, Struct_1(false), false, 7774i, -36408i);

var<private> global2: array<f32, 1> = array<f32, 1>(1731f);

var<private> global3: Struct_3 = Struct_3(4294967295u);

var<private> global4: array<vec4<bool>, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = 1u;
    let var_1 = arg_0;
    global3 = Struct_3(0u);
    var var_2 = Struct_5(-674i, global1.b, global1.c, u_input.c.x, 3056i);
    global1 = Struct_5(-select(u_input.a, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.b.x), var_2.c), Struct_1(true), false, 0i, 2147483647i);
    return ~(~vec3<u32>(~global3.a, 4294967295u, 4294967295u) | abs((vec3<u32>(var_0, 4294967295u, var_0) >> (vec3<u32>(24990u, 1u, 4294967295u) % vec3<u32>(32u))) >> (~vec3<u32>(var_0, global3.a, global3.a) % vec3<u32>(32u))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -294f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-253f, -227f))), _wgslsmith_f_op_vec2_f32(trunc(arg_0)))))), Struct_1(global1.b.a), -983f, _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a ^ -6095i, -2147483647i, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d, u_input.a, 64465i, global1.a), vec4<i32>(u_input.b.x, global1.a, 1i, global1.e))), vec4<i32>(1i, -21381i, _wgslsmith_mult_i32(abs(global1.e), u_input.c.x), global1.d)), global1.b);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(var_0.a, var_0.a)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0))), select(!vec2<bool>(global1.b.a, global1.c), select(vec2<bool>(var_0.b.a, true), vec2<bool>(true, true), var_0.e.a), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.a)))))), Struct_1(!global1.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.a.x)))), select(~countOneBits(vec4<i32>(var_0.d.x, -1i, -46792i, global1.a)), vec4<i32>(0i, 79575i, -global1.a & (i32(-1i) * -1i), var_0.d.x), true), Struct_1(false));
    global1 = Struct_5(u_input.b.x, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.c, -1147f)), var_1.a.x) > 174f), select(var_1.e.a, any(!vec3<bool>(var_1.b.a, global1.c, true)), _wgslsmith_sub_i32(global1.d, var_0.d.x) < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -17199i, global1.d), vec4<i32>(global1.d, var_1.d.x, global1.d, -68749i))) & all(select(vec2<bool>(false, true), !vec2<bool>(global1.b.a, true), true)), ~2147483647i, 1i);
    var var_2 = !(!all(vec3<bool>(global1.b.a & var_0.b.a, any(vec2<bool>(var_0.e.a, var_0.b.a)), !global1.c)));
    let var_3 = Struct_4(vec3<bool>(false != var_0.e.a, _wgslsmith_f_op_f32(-var_1.c) == _wgslsmith_f_op_f32(-501f * 1043f), _wgslsmith_f_op_f32(-var_1.c) <= -922f), var_0.e, ~(vec4<u32>(27032u, global3.a, _wgslsmith_clamp_u32(27813u, 56866u, global3.a), global3.a) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a, global3.a, global3.a, global3.a), vec4<u32>(0u, global3.a, 29615u, 0u) & vec4<u32>(4294967295u, global3.a, global3.a, global3.a), _wgslsmith_div_vec4_u32(vec4<u32>(9408u, 44579u, global3.a, 67107u), vec4<u32>(4875u, 54724u, global3.a, 49907u))) % vec4<u32>(32u))), global1.b);
    return -2147483647i;
}

fn func_1() -> Struct_4 {
    let var_0 = ~(((~vec3<u32>(4225u, global3.a, global3.a) | func_2(global1.c)) << (~(vec3<u32>(4294967295u, 3676u, global3.a) | vec3<u32>(76756u, 105663u, 1u)) % vec3<u32>(32u))) ^ ~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 63522u, global3.a), ~vec3<u32>(global3.a, global3.a, 4294967295u)));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -global1.a, -9985i, u_input.c.x), vec4<i32>(u_input.c.x, global1.d, 2147483647i, -func_3(vec2<f32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]))));
    let var_2 = Struct_1(true);
    var var_3 = global3.a;
    var var_4 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u, 1u)]), 1188f), global1.b, global2[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 1u)], -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(13147i, -2147483647i, var_1, 2147483647i) | vec4<i32>(var_1, u_input.c.x, 18419i, var_1)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-1i, 0i, u_input.b.x, u_input.b.x), vec4<i32>(var_1, 1i, 1i, 0i), true), _wgslsmith_mult_vec4_i32(vec4<i32>(-56616i, global1.a, global1.a, -22638i), vec4<i32>(u_input.b.x, -20302i, 1i, global1.e)), vec4<i32>(var_1, 67604i, global1.e, u_input.c.x) >> (vec4<u32>(global3.a, 23545u, global3.a, 0u) % vec4<u32>(32u)))), Struct_1(select(!global1.c, any(vec3<bool>(false, var_2.a, false)), global1.c) & (_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 1u)]) == _wgslsmith_f_op_f32(abs(-555f)))));
    return Struct_4(vec3<bool>(false, all(!(!global4[_wgslsmith_index_u32(22278u, 20u)])), false), var_2, ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, global3.a, 4289u) << (vec4<u32>(global3.a, 4294967295u, 1u, var_0.x) % vec4<u32>(32u)), vec4<u32>(0u, 16425u, 0u, global3.a)) << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, global3.a, var_0.x), vec4<u32>(10773u, global3.a, global3.a, 27979u))) % vec4<u32>(32u)), Struct_1(true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(_wgslsmith_mult_u32(abs(global3.a), global3.a));
    global3 = Struct_3(select(_wgslsmith_clamp_u32(~var_0.c.x, 2858u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_0.c.wzw, var_0.c.yyx), var_0.c.x)), _wgslsmith_clamp_u32(~var_0.c.x, var_0.c.x, 1u), false));
    global1 = Struct_5(0i, global0[_wgslsmith_index_u32(877u, 29u)], true & var_0.b.a, ~38129i, firstLeadingBit(min((u_input.b.x >> (var_0.c.x % 32u)) & u_input.a, 2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.a, 1u)]) * -594f))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~(func_2(var_0.d.a).x & (var_0.c.x & 4294967295u)), 1u)]);
}

