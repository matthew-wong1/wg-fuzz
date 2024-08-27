struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, false, false, true, false, true, true, false, false, true, false, true, false, false, true, true, false);

var<private> global1: vec2<u32>;

var<private> global2: array<f32, 17> = array<f32, 17>(-641f, 1764f, 1460f, -2202f, 1800f, -1000f, 2776f, -449f, 1867f, -609f, 1000f, 1740f, 609f, 1545f, -1787f, -1944f, -1189f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(1493f * global2[_wgslsmith_index_u32(62255u, 17u)]), 1134f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -783f), -487f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-579f, global2[_wgslsmith_index_u32(66914u, 17u)], false)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, u_input.b), 17u)]) * _wgslsmith_div_vec2_f32(vec2<f32>(321f, 2435f), vec2<f32>(1000f, 955f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-299f, global2[_wgslsmith_index_u32(global1.x, 17u)], global2[_wgslsmith_index_u32(u_input.b, 17u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(868f, 1316f, global2[_wgslsmith_index_u32(global1.x, 17u)]))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -873f), vec3<f32>(var_0.x, global2[_wgslsmith_index_u32(43263u, 17u)], -1623f)))), vec3<f32>(-440f, -709f, 1290f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(533f, -816f, global2[_wgslsmith_index_u32(0u, 17u)]) + vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    var var_2 = arg_0;
    global1 = ~vec2<u32>(u_input.c.x, 47788u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

fn func_2() -> i32 {
    global2 = array<f32, 17>();
    var var_0 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(global1.x), 17u)] * _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(u_input.a, vec2<bool>(true, true)))), vec3<i32>(u_input.a.x, u_input.a.x, 65184i), Struct_1(vec4<i32>(u_input.a.x, 0i, 44360i, u_input.a.x), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<i32>(-14071i, u_input.a.x, -19987i, u_input.a.x), vec2<bool>(true, true)))))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = 122893u;
    global2 = array<f32, 17>();
    global2 = array<f32, 17>();
    return 1i;
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<u32> {
    global1 = vec2<u32>(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(93448u, global1.x, u_input.c.x, 1u), vec4<u32>(86239u, global1.x, 60411u, 1544u)), ~vec4<u32>(54920u, 1u, global1.x, 4294967295u)), vec4<u32>(~4294967295u, _wgslsmith_mod_u32(0u, global1.x), _wgslsmith_div_u32(global1.x, 1u), global1.x))), (4294967295u << (global1.x % 32u)) & 1u);
    let var_0 = vec4<i32>(~arg_0, arg_1, _wgslsmith_div_i32(-68678i, u_input.a.x), -func_2() >> (reverseBits(1u) % 32u));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1936f, global2[_wgslsmith_index_u32(max(0u, u_input.c.x), 17u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], global2[_wgslsmith_index_u32(103080u, 17u)])), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(463f, -1218f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(120f, -1000f))), global2[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, 802f)))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_f_op_f32(-588f * -374f))))));
    var var_2 = global0[_wgslsmith_index_u32(global1.x, 18u)];
    var var_3 = Struct_4(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 18u)], global0[_wgslsmith_index_u32(25271u, 18u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(52820u, 18u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 18u)], true, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 18u)])), !global0[_wgslsmith_index_u32(global1.x, 18u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(global1.x, 18u)]), true));
    return vec3<u32>(46799u, reverseBits(~u_input.b), global1.x | (global1.x ^ 25070u)) | _wgslsmith_div_vec3_u32(vec3<u32>(11507u, _wgslsmith_clamp_u32(4294967295u, 38866u, 1u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(12180u, u_input.b, global1.x, 4294967295u), vec4<u32>(0u, 1500u, u_input.b, 4294967295u)), ~(~global1.x)), vec3<u32>(~0u, u_input.c.x, ~u_input.c.x >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    let var_0 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(u_input.a.x, -u_input.a.x)), u_input.a.x);
    var var_1 = ~(max(func_1(abs(16570i), var_0), abs(u_input.c)) << (u_input.c % vec3<u32>(32u)));
    var var_2 = (((global1.x <= ~var_1.x) && (global0[_wgslsmith_index_u32(~18677u, 18u)] & any(vec2<bool>(false, global0[_wgslsmith_index_u32(1186u, 18u)])))) || (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x, 17u)]), _wgslsmith_f_op_f32(f32(-1f) * -1520f)) <= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~1u, 17u)]))) || all(!(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 18u)], global0[_wgslsmith_index_u32(61992u, 18u)], global0[_wgslsmith_index_u32(var_1.x, 18u)])));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~global1.x, 17u)], 1139f)));
    var var_4 = Struct_3(Struct_2(Struct_1(firstLeadingBit(u_input.a), vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)], true, true)), global0[_wgslsmith_index_u32(~var_1.x, 18u)]))));
    global1 = vec2<u32>(_wgslsmith_add_u32(min(u_input.c.x, global1.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_mod_u32(global1.x, 1671u))), ~1u) >> (u_input.c.zx % vec2<u32>(32u));
    var_2 = !var_4.a.a.b.x;
    let var_5 = select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 18u)], false, false, var_4.a.a.b.x), !vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(global1.x, 18u)]), var_4.a.a.b.x)), vec4<bool>(_wgslsmith_add_u32(global1.x ^ 13098u, abs(var_1.x)) == 4294967295u, true, false && var_4.a.a.b.x, !(global0[_wgslsmith_index_u32(23086u, 18u)] | any(vec3<bool>(var_4.a.a.b.x, false, true)))), !(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(global1.x, 18u)])) & all(select(vec3<bool>(var_4.a.a.b.x, var_4.a.a.b.x, true), vec3<bool>(false, false, true), vec3<bool>(true, var_4.a.a.b.x, var_4.a.a.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, 8037u, var_1.x, 1u), vec4<u32>(96393u, var_1.x, u_input.c.x, var_1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_1.x, 100578u), vec4<u32>(u_input.b, 6346u, var_1.x, 307u)))), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 17u)] * _wgslsmith_f_op_f32(ceil(534f))), -1872f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.a, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -802f))), 286f), _wgslsmith_clamp_vec2_i32(var_4.a.a.a.zy, reverseBits(select(-vec2<i32>(var_4.a.a.a.x, var_4.a.a.a.x), vec2<i32>(-13284i, u_input.a.x), false)), u_input.a.yx), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -1102f, var_3.a, var_3.a)))) + vec4<f32>(-686f, -879f, _wgslsmith_f_op_f32(f32(-1f) * -804f), -1085f))));
}

