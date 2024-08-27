struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_1 = Struct_1(true, 1i);

var<private> global1: array<i32, 28>;

var<private> global2: array<i32, 14>;

var<private> global3: array<vec3<bool>, 20>;

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global2 = array<i32, 14>();
    global4 = array<Struct_1, 29>();
    var var_0 = global4[_wgslsmith_index_u32(abs(3560u), 29u)];
    global3 = array<vec3<bool>, 20>();
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(global0.b, -2147483647i), _wgslsmith_clamp_i32(u_input.a, -44864i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.b, 1i, global0.b), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], -39592i, global2[_wgslsmith_index_u32(9848u, 14u)], 0i)))), select(~arg_0.b >> (0u % 32u), min(global1[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(5678u, 14u)], 6351i, -2147483647i, 2147483647i), vec4<i32>(global0.b, u_input.a, arg_0.b, global1[_wgslsmith_index_u32(50889u, 28u)]))), arg_0.a)) | 6640i;
    return _wgslsmith_div_i32(-1i, ~_wgslsmith_div_i32(-_wgslsmith_mult_i32(-21413i, -1i), global1[_wgslsmith_index_u32(0u, 28u)]));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(global0.a, -1i | func_3(Struct_1(arg_0 || arg_0, _wgslsmith_add_i32(global0.b, -2147483647i))));
    let var_1 = Struct_1(!all(select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 5797u), 20u)], vec3<bool>(true, global0.a, global0.a), !vec3<bool>(global0.a, false, false))), func_3(Struct_1(true, u_input.a)));
    var var_2 = 2147483647i;
    var var_3 = ~(~(~max(vec4<u32>(24168u, 51745u, 26939u, 27053u), select(vec4<u32>(0u, 0u, 9639u, 11914u), vec4<u32>(52845u, 4294967295u, 4294967295u, 4294967295u), false))));
    var var_4 = var_1;
    return ~_wgslsmith_div_u32(firstLeadingBit(0u), ~select(var_3.x, var_3.x, u_input.a != var_1.b));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    global4 = array<Struct_1, 29>();
    let var_0 = Struct_1(global0.a & !any(!vec4<bool>(arg_1.a, global0.a, false, arg_1.a)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~(~global1[_wgslsmith_index_u32(27141u, 28u)]), 0i ^ (0i | u_input.a)), arg_1.b));
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    var var_1 = vec3<i32>(global0.b, 5353i, global2[_wgslsmith_index_u32(abs(arg_0), 14u)]);
    return ~abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 1u, 1u), vec4<u32>(arg_0, arg_0, arg_0, 1u)), 4294967295u, _wgslsmith_div_u32(63036u, arg_0))) & ~vec3<u32>(~1u, min(_wgslsmith_add_u32(19623u, arg_0), ~arg_0), arg_0);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(global0.a, abs(-21235i));
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-378f, -2222f, -888f, -139f) * vec4<f32>(-644f, 1437f, -1492f, 606f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-675f, 1000f, -404f, 1000f))), vec4<f32>(955f, -1250f, -1000f, 1388f), vec4<bool>(true, global0.a, false, true)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(596f)), _wgslsmith_f_op_f32(sign(-356f)), _wgslsmith_f_op_f32(step(1000f, 951f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = Struct_1(!any(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, arg_1.x << (0u % 32u)), 20u)]), select(u_input.a, _wgslsmith_sub_i32(-2455i, ~u_input.a), true) >> (arg_0.x % 32u));
    global0 = global4[_wgslsmith_index_u32(~arg_1.x, 29u)];
    global2 = array<i32, 14>();
    return global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(abs(14351u), ~4294967295u) >> (0u % 32u), ~((_wgslsmith_div_u32(arg_1.x, 0u) ^ arg_0.x) ^ ~(38188u << (arg_1.x % 32u)))), 29u)];
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<bool> {
    global0 = func_5(func_4(func_2(global0.a), Struct_1(global0.a, abs(global2[_wgslsmith_index_u32(arg_0, 14u)] >> (arg_0 % 32u)))), firstTrailingBit(func_4(arg_0, Struct_1(false, 47285i))), 33650u, max(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(18691u, arg_0, 4294967295u, 0u), vec4<u32>(arg_0, arg_0, arg_0, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(56647u, 4294967295u, 39587u, arg_0), vec4<u32>(96495u, 0u, 39689u, 1u))), arg_0), 4294967295u));
    var var_0 = -(~vec4<i32>(-global1[_wgslsmith_index_u32(81966u, 28u)] << (abs(80189u) % 32u), ~(-global0.b), min(arg_1.b >> (0u % 32u), ~global2[_wgslsmith_index_u32(4294967295u, 14u)]), ~arg_2.x));
    global0 = arg_1;
    global3 = array<vec3<bool>, 20>();
    var var_1 = max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0, 13462u), ~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(arg_0, arg_0, 70412u)), ~vec3<u32>(arg_0, arg_0, 1u))), vec3<u32>(8707u, ~4294967295u, 1u));
    return vec4<bool>(false, !all(!(!vec2<bool>(arg_1.a, true))), global0.a, global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = countOneBits(~firstTrailingBit(~vec3<u32>(22677u, 17452u, 0u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    let var_2 = vec2<i32>(global0.b, var_0) >> (~(~vec2<u32>(~80585u, _wgslsmith_add_u32(1u, var_1.x))) % vec2<u32>(32u));
    var var_3 = var_1.x;
    var var_4 = _wgslsmith_dot_vec2_i32(var_2, ~(-vec2<i32>(14435i, 0i)) & _wgslsmith_div_vec2_i32(var_2, -var_2)) >> (~(~(firstTrailingBit(0u) >> (1u % 32u))) % 32u);
    let var_5 = !select(select(select(func_1(38393u, global4[_wgslsmith_index_u32(0u, 29u)], vec3<i32>(-1i, 41668i, 65637i)), func_1(0u, global4[_wgslsmith_index_u32(var_1.x, 29u)], vec3<i32>(2147483647i, u_input.a, -1i)), any(vec4<bool>(false, global0.a, global0.a, global0.a))), vec4<bool>(true, global0.a, true, true), true), vec4<bool>(true, firstTrailingBit(0i) < -43287i, select(func_1(var_1.x, Struct_1(true, global0.b), vec3<i32>(global0.b, 2147483647i, global1[_wgslsmith_index_u32(var_1.x, 28u)])).x, global0.a, any(vec4<bool>(global0.a, global0.a, global0.a, false))), global0.a), all(vec2<bool>(!global0.a, !global0.a)));
    let var_6 = Struct_1(all(select(!func_1(4294967295u, Struct_1(true, var_0), vec3<i32>(1i, 0i, 2147483647i)).zzz, !var_5.xzy, global0.a)), -abs(global0.b));
    global4 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-765f, 857f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1098f, -543f), vec2<f32>(1100f, -719f))))))));
}

