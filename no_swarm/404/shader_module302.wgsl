struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 61054u, 18433u, 4294967295u, 63977u, 0u, 54609u, 600u, 60547u, 0u, 1u, 1u, 4294967295u, 4294967295u, 4294967295u, 1u, 1u);

var<private> global1: u32 = 1u;

var<private> global2: vec2<i32> = vec2<i32>(-1i, 2147483647i);

var<private> global3: f32;

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    var var_0 = u_input.b;
    var var_1 = u_input.e.x ^ 6468i;
    let var_2 = ~(u_input.b << ((u_input.b << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u));
    var var_3 = global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(~1u, ~var_2.x, ~var_2.x)), 17u)], 4u)];
    var var_4 = Struct_1(all(!select(select(vec4<bool>(var_3.a, var_3.a, var_3.a, false), vec4<bool>(false, var_3.a, var_3.a, true), vec4<bool>(var_3.a, var_3.a, true, var_3.a)), select(vec4<bool>(true, true, var_3.a, var_3.a), vec4<bool>(true, var_3.a, false, true), var_3.a), vec4<bool>(true, false, var_3.a, true))));
    return -398f;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, ~(u_input.a ^ ~4294967295u)), 4u)];
    let var_1 = ~72160u;
    global1 = firstLeadingBit((arg_0 | ~(~0u)) << (countOneBits(reverseBits(_wgslsmith_add_u32(u_input.a, 28363u))) % 32u));
    global4 = array<Struct_1, 4>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -179f, 210f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(634f, 702f, -1109f) - vec3<f32>(1106f, 1000f, -934f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-342f, -275f, -821f), vec3<f32>(-215f, -900f, -160f), arg_1.a))))) + vec3<f32>(-2386f, _wgslsmith_div_f32(-385f, -1404f), 177f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(142f, 492f, 1338f))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1022f, 484f), vec3<f32>(163f, 2192f, 1000f)))))))));
    return -1000f;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> f32 {
    global4 = array<Struct_1, 4>();
    let var_0 = Struct_1(arg_0.a);
    let var_1 = Struct_1(true);
    let var_2 = arg_3;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-426f)) * _wgslsmith_f_op_f32(func_2())))), 966f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(~u_input.a, Struct_1(true)))))), _wgslsmith_f_op_f32(func_3(arg_1, Struct_1(var_2.a))), any(select(select(select(vec2<bool>(false, var_2.a), vec2<bool>(arg_0.a, false), var_2.a), vec2<bool>(false, var_2.a), !vec2<bool>(false, arg_2)), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(u_input.b.ywx, u_input.b.yyy) >= ~u_input.b.x))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_sub_i32(u_input.e.x, ~global2.x)), _wgslsmith_mod_i32(u_input.e.x, -(1i | u_input.e.x)));
    let var_1 = Struct_1(true);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(func_1(global4[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), 1u, all(vec4<bool>(arg_0, arg_0, arg_0, var_1.a))), 4u)], ~u_input.d.x << (_wgslsmith_mult_u32(u_input.a << (0u % 32u), u_input.c) % 32u), false, Struct_1(_wgslsmith_f_op_f32(arg_1.x * -773f) < _wgslsmith_f_op_f32(350f - -1000f)))));
    var var_2 = Struct_1(false);
    let var_3 = global2.x;
    return _wgslsmith_f_op_f32(select(362f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(625f, -1621f)))), !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    global2 = u_input.e.xy;
    global0 = array<u32, 17>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~1u == u_input.d.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-908f * 1117f), 1755f, 874f, _wgslsmith_f_op_f32(func_1(Struct_1(true), global0[_wgslsmith_index_u32(0u, 17u)], true, Struct_1(true)))), vec4<f32>(-246f, _wgslsmith_f_op_f32(trunc(-325f)), -1311f, -115f)))));
    var var_0 = global4[_wgslsmith_index_u32(~select(_wgslsmith_div_u32(u_input.d.x, u_input.a), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.c, 17u)] | ~8277u, global0[_wgslsmith_index_u32(1u, 17u)]), ~(~33937u) != _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(u_input.a, 17u)], 1u)), 4u)];
    var var_1 = Struct_1(_wgslsmith_add_i32(-1i, global2.x) <= ~min(u_input.e.x ^ u_input.e.x, -1i));
    var var_2 = Struct_1(var_0.a);
    var_0 = global4[_wgslsmith_index_u32(~min(max(select(1u, u_input.a, false), 83914u) & _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.xw, u_input.b.zz), abs(u_input.d)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 17u)], u_input.a), u_input.b.zwx) | ~u_input.c), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 17u)] | _wgslsmith_add_u32(30560u, 0u), 17u)], 17u)]), 0u), _wgslsmith_f_op_f32(f32(-1f) * -643f), 28218u, vec2<i32>(~global2.x, 1i), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a, u_input.d.x)), u_input.d));
}

