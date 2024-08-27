struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(26811i);

var<private> global1: array<f32, 2>;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec4<i32>(2147483647i, -1i, -1i, 2239i), false, false, vec2<u32>(116652u, 7562u), Struct_1(13779u, vec4<u32>(1u, 0u, 3792u, 1u), vec3<f32>(478f, 775f, -1152f))), Struct_4(vec4<i32>(-36351i, 14902i, 1i, 1474i), true, true, vec2<u32>(2385u, 0u), Struct_1(1u, vec4<u32>(1u, 57884u, 4294967295u, 1u), vec3<f32>(-1020f, 984f, -307f))), Struct_4(vec4<i32>(-14599i, -1i, 33388i, -1i), false, true, vec2<u32>(82663u, 1u), Struct_1(0u, vec4<u32>(1u, 0u, 1u, 8102u), vec3<f32>(1918f, -1095f, 563f))), Struct_4(vec4<i32>(-7557i, -1643i, 1i, 1i), true, true, vec2<u32>(28314u, 4294967295u), Struct_1(4294967295u, vec4<u32>(1u, 66135u, 0u, 4294967295u), vec3<f32>(545f, 507f, 595f))), Struct_4(vec4<i32>(-1i, -15323i, 16292i, -3889i), false, false, vec2<u32>(1u, 0u), Struct_1(53522u, vec4<u32>(1u, 1u, 1u, 1u), vec3<f32>(-151f, -950f, -1062f))), Struct_4(vec4<i32>(1i, 2147483647i, -72283i, 1i), false, false, vec2<u32>(4294967295u, 27326u), Struct_1(0u, vec4<u32>(0u, 7955u, 1u, 83080u), vec3<f32>(320f, 677f, -1854f))), Struct_4(vec4<i32>(1i, -23796i, 14844i, i32(-2147483648)), false, false, vec2<u32>(41269u, 0u), Struct_1(50029u, vec4<u32>(7046u, 1u, 102902u, 4294967295u), vec3<f32>(-1913f, 108f, -546f))), Struct_4(vec4<i32>(i32(-2147483648), -38283i, 0i, -16605i), true, false, vec2<u32>(4294967295u, 3886u), Struct_1(4294967295u, vec4<u32>(3920u, 4294967295u, 0u, 0u), vec3<f32>(-175f, 664f, 1120f))), Struct_4(vec4<i32>(4757i, 2147483647i, 47745i, 17746i), true, true, vec2<u32>(1u, 44247u), Struct_1(15777u, vec4<u32>(39140u, 10182u, 28481u, 152448u), vec3<f32>(561f, -1066f, 170f))), Struct_4(vec4<i32>(1i, 40312i, 2147483647i, 2147483647i), false, true, vec2<u32>(2792u, 0u), Struct_1(4294967295u, vec4<u32>(13043u, 0u, 4294967295u, 8184u), vec3<f32>(-278f, -1000f, 1084f))), Struct_4(vec4<i32>(15320i, -61042i, 2147483647i, i32(-2147483648)), false, true, vec2<u32>(1u, 39059u), Struct_1(15285u, vec4<u32>(1u, 4294967295u, 1u, 0u), vec3<f32>(2188f, -1099f, 1685f))), Struct_4(vec4<i32>(2147483647i, 0i, -6042i, -1i), true, false, vec2<u32>(0u, 0u), Struct_1(4294967295u, vec4<u32>(1u, 4643u, 0u, 63477u), vec3<f32>(-1000f, 802f, 455f))), Struct_4(vec4<i32>(-1i, 3080i, 11724i, -34710i), false, true, vec2<u32>(64743u, 0u), Struct_1(5309u, vec4<u32>(1277u, 1u, 1u, 29604u), vec3<f32>(491f, 379f, -1329f))), Struct_4(vec4<i32>(-33050i, 37105i, i32(-2147483648), 23276i), false, false, vec2<u32>(0u, 0u), Struct_1(4294967295u, vec4<u32>(1u, 1u, 24886u, 534u), vec3<f32>(-1372f, -1103f, -1536f))), Struct_4(vec4<i32>(0i, 1i, -19255i, -787i), false, false, vec2<u32>(0u, 40174u), Struct_1(0u, vec4<u32>(1u, 36807u, 17977u, 15640u), vec3<f32>(-924f, -141f, 959f))), Struct_4(vec4<i32>(-1i, 24192i, -1i, i32(-2147483648)), true, false, vec2<u32>(34273u, 0u), Struct_1(13851u, vec4<u32>(86289u, 49594u, 9599u, 45054u), vec3<f32>(660f, -276f, -450f))), Struct_4(vec4<i32>(-1i, 30256i, -1i, -6855i), true, true, vec2<u32>(19046u, 3052u), Struct_1(1u, vec4<u32>(1u, 43536u, 1u, 1u), vec3<f32>(-981f, 1263f, -1499f))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    global2 = array<Struct_4, 17>();
    global2 = array<Struct_4, 17>();
    var var_0 = 5271u;
    return 2147483647i;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(112f, _wgslsmith_f_op_f32(floor(arg_2.a.c.x)), 1000f, _wgslsmith_f_op_f32(round(750f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(105f, global1[_wgslsmith_index_u32(1u, 2u)], -475f, arg_0.e.c.x) * vec4<f32>(global1[_wgslsmith_index_u32(0u, 2u)], arg_1.c.a.c.x, -376f, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(arg_1.c.a.b.x, 2u)], -1279f, -291f) + vec4<f32>(526f, arg_3, -976f, 106f)))))));
    global1 = array<f32, 2>();
    global0 = array<i32, 1>();
    let var_1 = abs(arg_0.a);
    var var_2 = arg_0.e;
    return ~arg_0.a.xz;
}

fn func_2(arg_0: bool, arg_1: i32) -> StorageBuffer {
    let var_0 = countOneBits(~func_3(Struct_4(-vec4<i32>(91248i, 55290i, 9737i, 2147483647i), arg_0, any(vec2<bool>(arg_0, arg_0)), vec2<u32>(1u, 1u), Struct_1(44873u, vec4<u32>(4294967295u, 0u, 29587u, 1u), vec3<f32>(-360f, -215f, global1[_wgslsmith_index_u32(51429u, 2u)]))), Struct_3(Struct_1(0u, vec4<u32>(10309u, 0u, 26454u, 4294967295u), vec3<f32>(global1[_wgslsmith_index_u32(0u, 2u)], -444f, global1[_wgslsmith_index_u32(1u, 2u)])), 47415u, Struct_2(Struct_1(1u, vec4<u32>(0u, 0u, 22224u, 1u), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], 1000f, global1[_wgslsmith_index_u32(5327u, 2u)])))), Struct_2(Struct_1(0u, vec4<u32>(0u, 72784u, 30376u, 4294967295u), vec3<f32>(global1[_wgslsmith_index_u32(45195u, 2u)], global1[_wgslsmith_index_u32(31788u, 2u)], 1556f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 2u)])));
    let var_1 = Struct_4(firstLeadingBit(-firstLeadingBit(vec4<i32>(20159i, arg_1, -35233i, global0[_wgslsmith_index_u32(47638u, 1u)]))), all(select(select(vec4<bool>(false, false, true, true), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, false, arg_0)), select(!vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(true, arg_0, false, false), vec4<bool>(true, arg_0, false, arg_0)), true | all(vec2<bool>(true, arg_0)))), true, ~vec2<u32>(min(999u, 1u), ~1u), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(264u, 0u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u))), ~reverseBits(55959u), abs(1u)), select(abs(vec4<u32>(1u, 1u, 1u, 1u)), min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(66768u, 21747u, 4294967295u, 26137u)), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, true), !vec4<bool>(false, arg_0, false, arg_0))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_f32(min(190f, global1[_wgslsmith_index_u32(28823u, 2u)])), _wgslsmith_div_f32(909f, -564f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]) + vec3<f32>(-713f, 1507f, global1[_wgslsmith_index_u32(0u, 2u)])))))));
    let var_2 = ~_wgslsmith_div_vec4_u32(firstLeadingBit(max(var_1.e.b, reverseBits(var_1.e.b))), var_1.e.b);
    global1 = array<f32, 2>();
    var var_3 = 18796i;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.c.x, var_1.e.c.x, 916f, global1[_wgslsmith_index_u32(var_2.x, 2u)])) * vec4<f32>(var_1.e.c.x, 511f, var_1.e.c.x, -1368f))))), abs(reverseBits(select(var_2.yx, ~vec2<u32>(4294967295u, var_1.e.a), vec2<bool>(arg_0, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    var var_0 = 19292i;
    global1 = array<f32, 2>();
    let var_1 = 50953u;
    global2 = array<Struct_4, 17>();
    let x = u_input.a;
    s_output = func_2(any(vec3<bool>(all(vec3<bool>(false, false, false)), false, true)) || (_wgslsmith_add_i32(_wgslsmith_div_i32(-3986i, 35066i), ~u_input.a) != -func_1(false, vec4<bool>(false, false, true, true))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 1u)]), -vec2<i32>(u_input.a, -1i)), vec2<i32>(u_input.a, u_input.a)));
}

