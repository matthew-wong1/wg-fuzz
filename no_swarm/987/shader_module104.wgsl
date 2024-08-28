struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<u32, 18> = array<u32, 18>(1u, 73233u, 4294967295u, 827u, 4294967295u, 52066u, 57753u, 1u, 4294967295u, 54779u, 1u, 1u, 0u, 1u, 0u, 4294967295u, 30348u, 1u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    var var_0 = all(select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), !all(vec4<bool>(false, false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(!all(vec3<bool>(true, true, false)), false)));
    var var_1 = u_input.b.zy;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f - 234f) + 1f), 1028f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(577f, -1815f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-415f, -543f, 1311f, 486f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1922f))), _wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(710f - -294f)), 294f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1535f, -2410f, 1585f), vec4<f32>(-487f, -320f, -482f, -375f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(900f, 1924f, -214f, 529f) - vec4<f32>(-1655f, 1858f, -549f, -506f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(854f, -954f, -1849f, 427f), vec4<f32>(913f, -1146f, -2512f, -1331f), true)), vec4<f32>(-1050f, 1765f, 502f, -1241f))))))));
    var_1 = u_input.b.yy;
    global1 = array<u32, 18>();
    return _wgslsmith_clamp_i32(~countOneBits(2147483647i), u_input.a.x, 2442i);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: bool) -> u32 {
    let var_0 = ~_wgslsmith_div_i32(abs(-35303i), ~1i);
    var var_1 = -vec4<i32>(1i, var_0, arg_1.d.x, func_3());
    var var_2 = arg_3;
    let var_3 = Struct_4(any(vec3<bool>(!(arg_3 || arg_2.b), true, true)), !all(vec2<bool>(any(vec4<bool>(arg_2.c.x, false, true, arg_3)), arg_2.b)), vec2<bool>(true, 4294967295u > (min(44591u, arg_1.a.a) >> (arg_1.a.a % 32u))));
    var var_4 = global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~min(abs(arg_1.a.a), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(18100u, 4294967295u, global1[_wgslsmith_index_u32(arg_1.a.a, 18u)], u_input.b.x) & vec4<u32>(arg_1.a.a, global1[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(arg_1.a.a, 16u)], 4294967295u))), 18u)], 18u)], 16u)];
    return _wgslsmith_div_u32(0u, u_input.b.x);
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = vec4<bool>(arg_0, select(true || arg_0, arg_0, arg_0), 794f == _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(940f * 641f)))), true);
    global1 = array<u32, 18>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~20259u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zyy, abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]))), 16u)], 16u)]), 0u);
    var var_2 = reverseBits(u_input.a);
    let var_3 = ~select(reverseBits(_wgslsmith_mod_u32(func_2(var_2.yy, Struct_3(Struct_1(global1[_wgslsmith_index_u32(17552u, 18u)]), vec3<f32>(-551f, 101f, -217f), vec2<f32>(235f, -230f), u_input.a, vec3<f32>(2621f, -556f, -1349f)), Struct_4(var_0.x, false, var_0.ww), true), global0[_wgslsmith_index_u32(~1u, 16u)])), ~45914u, all(select(select(vec4<bool>(true, false, true, false), var_0, false), select(vec4<bool>(arg_0, false, var_0.x, var_0.x), var_0, false), var_0)));
    return var_2.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(254f, _wgslsmith_f_op_f32(f32(-1f) * -3592f)));
    let var_1 = _wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(func_1(true), select(u_input.a.xw, reverseBits(vec2<i32>(u_input.a.x, -5252i)), any(vec4<bool>(false, false, false, false)))), ~_wgslsmith_mod_vec2_i32(u_input.a.ww, vec2<i32>(0i, u_input.d.x)) >> ((vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(~53813u, 18u)]) << (reverseBits(~vec2<u32>(1u, 28888u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = array<u32, 18>();
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 32481u, 105338u, 4294967295u), ~u_input.b) >> (select(u_input.b, vec4<u32>(4294967295u, u_input.b.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)]), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))) % vec4<u32>(32u)), ~vec4<u32>(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 18u)], ~global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 1u, u_input.b.x)), global1[_wgslsmith_index_u32(57850u, 18u)]);
    global0 = array<u32, 16>();
    var var_3 = Struct_4(true, any(vec2<bool>(true, true)) | (true | any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), vec2<bool>(!(all(vec4<bool>(false, true, false, false)) | true), true));
    var var_4 = Struct_2(select(select(!vec3<bool>(var_3.c.x, true, var_3.b), !vec3<bool>(var_3.a, true, var_3.b), true), select(!(!vec3<bool>(false, var_3.c.x, var_3.b)), select(!vec3<bool>(true, var_3.b, var_3.b), vec3<bool>(var_3.b, var_3.a, var_3.a), select(vec3<bool>(false, true, var_3.c.x), vec3<bool>(false, var_3.b, var_3.c.x), false)), !(!var_3.a)), var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(-18019i, global0[_wgslsmith_index_u32(func_2(~u_input.d.yz, Struct_3(Struct_1(102734u), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -982f, -1000f) * vec3<f32>(var_0, -352f, -609f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, -1792f))), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(2032i, -2147483647i, u_input.a.x, -3470i)) >> (~vec4<u32>(0u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 18u)]) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(240f, var_0, var_0) - vec3<f32>(1915f, 1602f, var_0)) - _wgslsmith_div_vec3_f32(vec3<f32>(584f, 100f, var_0), vec3<f32>(-874f, -191f, 1236f)))), Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 62898u), 18u)] < global1[_wgslsmith_index_u32(u_input.b.x, 18u)], _wgslsmith_mult_u32(1651u, 69214u) == (0u | u_input.b.x), vec2<bool>(true, var_3.c.x)), !(false | !var_4.a.x)), 16u)], ~u_input.b.zyx);
}

