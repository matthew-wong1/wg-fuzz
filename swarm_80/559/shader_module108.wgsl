struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 11>;

var<private> global2: array<u32, 23>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f * -111f)), 451f) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1420f)), _wgslsmith_div_f32(-306f, 785f))), 515f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1090f, 217f), vec2<f32>(435f, 846f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1613f, 1771f) - vec2<f32>(1281f, -763f))))), arg_1.b.c.x));
    let var_1 = Struct_2(~(~vec3<u32>(u_input.b.x, 37685u, 1u) >> (select(vec3<u32>(43887u, global2[_wgslsmith_index_u32(arg_1.b.b.x, 23u)], 1u), ~vec3<u32>(global2[_wgslsmith_index_u32(0u, 23u)], 23923u, 4294967295u), !vec3<bool>(arg_1.b.c.x, true, global1[_wgslsmith_index_u32(4294967295u, 11u)])) % vec3<u32>(32u))), arg_1.b, arg_1.c);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(416f)) * var_0.x) - var_0.x), 1692f);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1880f, var_0.x), vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 351f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-313f, var_0.x)))), var_1.b.c.xy))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(-1083f)), _wgslsmith_f_op_f32(step(-885f, var_0.x))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(step(1000f, var_0.x)))))));
    let var_2 = -26160i;
    return select(1u, arg_1.a.x, true);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2.a;
    let var_1 = arg_2.c;
    let var_2 = vec4<u32>(arg_2.b.x, ~_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(1u, u_input.b.x)), 4294967295u, reverseBits(u_input.b.x) | _wgslsmith_div_u32(arg_2.d << (u_input.b.x % 32u), _wgslsmith_clamp_u32(52752u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], global2[_wgslsmith_index_u32(arg_2.b.x, 23u)]))) >> (min(vec4<u32>(~(~u_input.b.x), func_3(abs(23668i), Struct_2(vec3<u32>(arg_2.e, 32058u, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), Struct_1(var_0, arg_2.b, vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false, var_1.x), arg_2.d, u_input.b.x), Struct_1(-7200i, vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(true, arg_2.c.x, false), arg_2.d, arg_2.e)), Struct_2(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b.x, 23u)], 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(arg_2.b.x, 23u)]), arg_2, Struct_1(0i, arg_2.b, arg_2.c, global2[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b.x))), abs(1u), ~_wgslsmith_mult_u32(u_input.b.x, arg_2.d)), (vec4<u32>(u_input.b.x, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 23u)], 1919u) ^ vec4<u32>(global2[_wgslsmith_index_u32(14189u, 23u)], 4294967295u, 1u, global2[_wgslsmith_index_u32(43833u, 23u)])) ^ vec4<u32>(~21089u, 8169u, 1u, u_input.b.x)) % vec4<u32>(32u));
    return 603f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1245f, _wgslsmith_f_op_f32(func_2(vec2<f32>(-130f, 1000f), -2147483647i, Struct_1(u_input.c, u_input.b, vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(47235u, 11u)], global1[_wgslsmith_index_u32(23013u, 11u)]), 25453u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(609f, 171f))) + _wgslsmith_f_op_f32(-1303f * _wgslsmith_f_op_f32(min(279f, -181f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, -301f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2848f, 1184f, -1118f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -289f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), var_0.x)))));
    return Struct_1(u_input.a, u_input.b, select(!(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)])), vec3<bool>((u_input.c != u_input.c) && !global1[_wgslsmith_index_u32(u_input.b.x, 11u)], true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), global1[_wgslsmith_index_u32(0u, 11u)]))), !vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), 11u)], !global1[_wgslsmith_index_u32(3614u, 11u)], !global1[_wgslsmith_index_u32(34819u, 11u)])), ~4294967295u, func_3(-13208i, Struct_2(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 23u)], 50071u, u_input.b.x)), Struct_1(-2147483647i, select(u_input.b, vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b.x), vec2<bool>(false, global1[_wgslsmith_index_u32(16385u, 11u)])), !vec3<bool>(global1[_wgslsmith_index_u32(19887u, 11u)], false, true), global2[_wgslsmith_index_u32(72372u, 23u)], 61872u), Struct_1(u_input.a, select(vec2<u32>(23760u, 4294967295u), u_input.b, global1[_wgslsmith_index_u32(86068u, 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], 11u)], global1[_wgslsmith_index_u32(32936u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_div_u32(46255u, 80134u), 1u | u_input.b.x)), Struct_2(select(vec3<u32>(38063u, u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)]), firstTrailingBit(vec3<u32>(41663u, 0u, 19209u)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], 11u)], true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), global1[_wgslsmith_index_u32(u_input.b.x, 11u)])), Struct_1(min(u_input.a, u_input.c), _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(51131u, 23636u)), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(4294967295u, 17253u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], 11u)]), 0u), Struct_1(countOneBits(2147483647i), _wgslsmith_clamp_vec2_u32(vec2<u32>(16318u, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), u_input.b, vec2<u32>(u_input.b.x, 5346u)), vec3<bool>(true, false, true), 33689u, 7247u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x & max(abs(~79923u), ~1u), 28880u), 23u)], 23u)];
    let var_1 = func_1();
    global0 = func_1().c.x;
    global0 = true;
    global2 = array<u32, 23>();
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~56584u, 1u, 1u), 11u)];
    global1 = array<bool, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(min(-(reverseBits(u_input.a) >> ((43077u >> (var_1.b.x % 32u)) % 32u)), 0i), _wgslsmith_mod_i32(7949i, var_1.a) << (select(var_1.b.x, u_input.b.x, true) % 32u), var_1.b, global2[_wgslsmith_index_u32(var_1.d, 23u)]);
}

