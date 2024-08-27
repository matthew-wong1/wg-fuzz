struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<i32, 12> = array<i32, 12>(26748i, -3205i, 47146i, 12662i, -71928i, -1i, 2229i, 35886i, -11453i, i32(-2147483648), -37265i, 21477i);

var<private> global2: array<Struct_3, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: f32) -> bool {
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = false;
    var var_1 = select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, !var_0, func_2(global2[_wgslsmith_index_u32(~1u, 7u)], select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, true)), vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0)), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1921f) * _wgslsmith_f_op_f32(f32(-1f) * -483f)))), vec3<bool>(true, var_0, var_0));
    global2 = array<Struct_3, 7>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(396f, -1267f))) - -151f))));
    var var_3 = -536f;
    return !select(vec3<bool>(true, !(!var_1.x), !var_1.x), vec3<bool>(true, _wgslsmith_mult_i32(2147483647i, u_input.b) < global1[_wgslsmith_index_u32(9903u, 12u)], _wgslsmith_f_op_f32(-var_2) == 546f), !(!vec3<bool>(var_1.x, var_0, var_0)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: i32) -> vec2<f32> {
    var var_0 = ~((~arg_1.b.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.c, arg_1.b.c, arg_0.b.c) >> (vec3<u32>(1u, arg_1.b.c, arg_1.b.c) % vec3<u32>(32u)), ~vec3<u32>(arg_1.b.c, arg_0.b.c, 111384u)) % 32u)) >> ((_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, arg_1.b.c), vec2<u32>(0u, arg_0.b.c)), vec2<u32>(68169u, arg_0.b.c) ^ vec2<u32>(0u, 20629u)) & ~34014u) % 32u));
    global0 = min(~16557u, ~4294967295u);
    let var_1 = 14245u;
    global0 = abs(~4294967295u);
    global2 = array<Struct_3, 7>();
    return arg_1.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    let var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(~_wgslsmith_mod_u32(0u, 1u), _wgslsmith_mod_u32(reverseBits(15402u), ~0u), ~(~4294967295u))), vec3<u32>(~(~(~0u)), 0u, 0u));
    let var_1 = u_input.a;
    global0 = ~_wgslsmith_mod_u32(2640u, ~(~(~0u)));
    global1 = array<i32, 12>();
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-128f - 2304f), 1f, _wgslsmith_div_f32(-163f, 1276f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346f - -239f)), -1727f, _wgslsmith_f_op_f32(select(-156f, _wgslsmith_f_op_f32(f32(-1f) * -227f), all(vec4<bool>(true, true, true, true))))), select(func_1(-vec4<i32>(var_1, var_1, 1i, u_input.b), ~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], var_1, -2147483647i, -1i)), func_1(max(vec4<i32>(u_input.a, var_1, global1[_wgslsmith_index_u32(var_0.x, 12u)], -2755i), vec4<i32>(u_input.b, u_input.a, var_1, -1i)), select(vec4<i32>(u_input.b, u_input.a, 0i, global1[_wgslsmith_index_u32(var_0.x, 12u)]), vec4<i32>(-18366i, global1[_wgslsmith_index_u32(var_0.x, 12u)], -1i, var_1), vec4<bool>(true, false, false, false))), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2422f, 975f, -1230f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1271f, 563f, 224f), vec3<f32>(591f, 1376f, -397f), vec3<bool>(false, true, false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-742f, 148f, -555f), vec3<f32>(-970f, 583f, -179f))) + vec3<f32>(-1136f, 1434f, -151f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstTrailingBit(countOneBits(vec4<u32>(560u, 0u, 4294967295u, 0u)))), _wgslsmith_f_op_vec2_f32(-var_2.yz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-712f))), -245f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(vec4<f32>(var_2.x, 147f, -523f, var_2.x), Struct_3(-2147483647i, Struct_2(vec4<i32>(1i, 2147483647i, 20440i, u_input.a)), var_0.x, Struct_2(vec4<i32>(2147483647i, 0i, -17713i, u_input.a))), var_1, var_2.x, Struct_2(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(var_0.x, 12u)], var_1, u_input.a))), Struct_4(vec4<f32>(381f, var_2.x, -1002f, 600f), Struct_3(1i, Struct_2(vec4<i32>(u_input.a, -33777i, var_1, u_input.b)), 4294967295u, Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], -2147483647i, var_1, var_1))), 47600i, var_2.x, Struct_2(vec4<i32>(1i, var_1, var_1, u_input.b))), vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(var_0.x, 12u)])), var_2.xz, vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.x, 1000f)))))))));
}

