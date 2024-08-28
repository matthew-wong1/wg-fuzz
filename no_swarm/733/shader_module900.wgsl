struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<bool>(false, false, false, true), 2147483647i), Struct_1(vec4<bool>(true, false, false, false), 0i), Struct_1(vec4<bool>(false, false, true, false), -1i));

var<private> global3: array<f32, 3> = array<f32, 3>(578f, -471f, -1609f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = 343f;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, global3[_wgslsmith_index_u32(1u, 3u)], 391f, global3[_wgslsmith_index_u32(u_input.c, 3u)]))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1481f, global3[_wgslsmith_index_u32(45605u, 3u)], -411f, var_0), vec4<f32>(1637f, var_0, 1000f, -504f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global3[_wgslsmith_index_u32(1u, 3u)], -365f, 567f) * vec4<f32>(global3[_wgslsmith_index_u32(arg_1, 3u)], global3[_wgslsmith_index_u32(u_input.b.x, 3u)], 1000f, global3[_wgslsmith_index_u32(arg_1, 3u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, 416f, global3[_wgslsmith_index_u32(0u, 3u)], -118f)))))));
    var var_2 = Struct_1(vec4<bool>(arg_0.x && (global1.a.x && (u_input.a.x == 1u)), arg_3.a.x, arg_3.a.x, any(vec3<bool>(true, arg_2 || false, true))), 9593i ^ _wgslsmith_mod_i32(~abs(9238i), arg_3.b));
    return !(!var_2.a);
}

fn func_2() -> Struct_1 {
    global3 = array<f32, 3>();
    let var_0 = !func_3(!(!global1.a.zww), u_input.a.x, global1.b >= _wgslsmith_dot_vec3_i32(-vec3<i32>(-46656i, -9340i, global1.b), abs(vec3<i32>(global1.b, global1.b, -33894i))), Struct_1(!global1.a, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global1.b, 23560i, -2147483647i)), vec3<i32>(2147483647i, -19445i, global1.b) & vec3<i32>(global1.b, global1.b, global1.b))));
    var var_1 = firstTrailingBit(vec4<u32>(~_wgslsmith_div_u32(~4294967295u, u_input.c), u_input.c, _wgslsmith_add_u32(firstTrailingBit(1u), 1u), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(29539u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x)))));
    let var_2 = global0[_wgslsmith_index_u32(~4294967295u, 9u)];
    global0 = array<Struct_1, 9>();
    return Struct_1(select(!global1.a, vec4<bool>(true, var_2.a.x, true, true), vec4<bool>(func_3(var_2.a.xxz, 4294967295u, true, global0[_wgslsmith_index_u32(countOneBits(4294967295u), 9u)]).x, var_2.a.x, true, false)), ~(-10886i));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = u_input.b.x;
    var var_2 = var_0.a.xy;
    var var_3 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b, -2147483647i), vec2<i32>(-51143i, -var_0.b));
    var_1 = _wgslsmith_dot_vec3_u32(select(u_input.a.yyw, ~vec3<u32>(u_input.c << (41630u % 32u), 12615u, _wgslsmith_mult_u32(u_input.c, 1266u)), true), vec3<u32>(5558u, abs(u_input.a.x), _wgslsmith_add_u32(~u_input.c, 52100u & u_input.a.x)) ^ reverseBits(u_input.b.yzw << (vec3<u32>(u_input.b.x, 0u, 40707u) % vec3<u32>(32u))));
    return var_0.a.wz;
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_1(vec4<bool>(u_input.a.x != _wgslsmith_div_u32(u_input.a.x, min(0u, 0u)), !var_0.a.x, true, !all(var_0.a)), 2147483647i);
    var_0 = Struct_1(var_0.a, global1.b);
    var_0 = global2[_wgslsmith_index_u32(countOneBits(1u), 3u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.b.x, 3u)])), 480f, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 3u)], _wgslsmith_f_op_f32(-176f + -1110f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-391f, global3[_wgslsmith_index_u32(0u, 3u)], global3[_wgslsmith_index_u32(u_input.b.x, 3u)], -276f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 3u)], -145f, -167f, global3[_wgslsmith_index_u32(23816u, 3u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(297f, global3[_wgslsmith_index_u32(14034u, 3u)], global3[_wgslsmith_index_u32(u_input.b.x, 3u)], global3[_wgslsmith_index_u32(1u, 3u)]) * vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 3u)], global3[_wgslsmith_index_u32(4294967295u, 3u)], -1000f, global3[_wgslsmith_index_u32(u_input.b.x, 3u)])))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 3u)], global3[_wgslsmith_index_u32(36286u, 3u)], global3[_wgslsmith_index_u32(16442u, 3u)], -1242f))))), true & var_1.a.x))));
    return global0[_wgslsmith_index_u32(29136u, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec4<bool>(any(global1.a.zxz), global1.a.x, !global1.a.x, global1.a.x), _wgslsmith_div_i32(29975i, -1i));
    global3 = array<f32, 3>();
    let var_1 = vec4<i32>(global1.b, -countOneBits(global1.b), -50289i, _wgslsmith_div_i32(global1.b, 21703i) & min(1i, _wgslsmith_div_i32(var_0.b, 7840i) << (63247u % 32u)));
    let var_2 = reverseBits(~(firstLeadingBit(~1u) ^ u_input.c));
    global1 = func_4(!select(vec2<bool>(false, var_0.a.x), func_1(), var_0.a.x));
    let var_3 = Struct_1(select(vec4<bool>(!(true || global1.a.x), any(select(var_0.a.wx, var_0.a.zw, var_0.a.x)), false & global1.a.x, func_1().x || func_4(vec2<bool>(global1.a.x, true)).a.x), !(!func_4(var_0.a.xx).a), !func_3(!global1.a.ywx, ~u_input.c, any(var_0.a.xz), global0[_wgslsmith_index_u32(u_input.b.x << (var_2 % 32u), 9u)])), firstTrailingBit(4557i));
    var_0 = Struct_1(select(var_3.a, select(global1.a, global1.a, var_3.a), !select(func_4(vec2<bool>(var_0.a.x, true)).a, !vec4<bool>(true, true, var_0.a.x, global1.a.x), !var_3.a)), _wgslsmith_mod_i32(var_3.b, abs(global1.b)));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_2 >> (3072u % 32u), u_input.a.x, ~1u, u_input.a.x)), u_input.a));
}

