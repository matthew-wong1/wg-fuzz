struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 12> = array<bool, 12>(false, true, true, false, true, false, false, false, true, false, false, false);

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_4, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = arg_2;
    return Struct_2(reverseBits(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 1u), u_input.a.zy | u_input.b))), arg_1.d.b, _wgslsmith_f_op_f32(-arg_2.x));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(u_input.a.wyx, vec3<u32>(reverseBits(53767u), 4294967295u, ~4294967295u));
    global0 = !select(select(select(select(arg_2, arg_2, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], false)), !vec2<bool>(global0.x, arg_2.x), all(vec3<bool>(true, false, false))), select(select(arg_2, arg_2, vec2<bool>(false, global0.x)), vec2<bool>(arg_2.x, true), arg_0.d.b.a), any(vec4<bool>(true, global0.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], false))), select(select(select(arg_2, vec2<bool>(false, true), false), vec2<bool>(arg_2.x, global0.x), arg_2), select(vec2<bool>(true, arg_0.d.b.a), !arg_2, all(arg_2)), true), false);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1794f - arg_0.a), _wgslsmith_f_op_f32(select(global2.x, -1175f, true)));
    global3 = array<Struct_4, 14>();
    let var_2 = arg_0.d;
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    return ~arg_0.a;
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    global1 = array<bool, 12>();
    var var_0 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, 1i, 1i, 1i)) | (-select(vec4<i32>(0i, 2147483647i, 2147483647i, -4289i), vec4<i32>(-1i, 40465i, -67567i, 79742i), vec4<bool>(true, global0.x, global0.x, global1[_wgslsmith_index_u32(44856u, 12u)])) | vec4<i32>(-2147483647i, 12050i, 15311i, abs(1i))), ~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, -19292i, 48373i, -4822i))));
    global0 = select(!(!vec2<bool>(global2.x >= global2.x, true)), vec2<bool>(false, any(!(!vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 12u)], true, global0.x)))), !vec2<bool>(any(select(vec3<bool>(global0.x, global1[_wgslsmith_index_u32(11519u, 12u)], true), vec3<bool>(false, true, global0.x), false)), false));
    var var_1 = u_input.b.x;
    let var_2 = !global1[_wgslsmith_index_u32(firstTrailingBit(arg_1 << (1u % 32u)), 12u)];
    return arg_1 ^ func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1500f), Struct_3(_wgslsmith_f_op_f32(751f - arg_0), vec2<i32>(2147483647i, -1i), abs(var_0.x), Struct_2(0u, Struct_1(global1[_wgslsmith_index_u32(0u, 12u)], var_0.x), -857f), 1u & u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(global2.x * -220f), _wgslsmith_f_op_f32(select(519f, arg_0, false)), _wgslsmith_f_op_f32(floor(arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(-862f, vec2<i32>(var_0.x, -2147483647i), 7778i, Struct_2(12978u, Struct_1(false, var_0.x), global2.x), 0u), -vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x), vec2<bool>(false, global0.x), ~var_0.zz)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -183f))), ~1u, Struct_2(u_input.a.x << (~u_input.a.x % 32u), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_3(arg_0, vec2<i32>(var_0.x, var_0.x), -1i, Struct_2(u_input.a.x, Struct_1(var_2, 2147483647i), -407f), u_input.b.x), vec4<f32>(-1206f, global2.x, global2.x, -474f)).b, _wgslsmith_f_op_f32(sign(global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(u_input.a.x, 32418u, firstLeadingBit(~u_input.a.x), 1u);
    let var_1 = _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-3171i, -2282i, 0i, 23450i)) & (vec4<i32>(-67656i, i32(-1i) * -6491i, -4444i, 0i) >> (select(min(vec4<u32>(15217u, 36520u, var_0.x, u_input.a.x), vec4<u32>(1u, 50260u, 0u, u_input.b.x)), vec4<u32>(var_0.x, 0u, var_0.x, 0u), global1[_wgslsmith_index_u32(var_0.x, 12u)]) % vec4<u32>(32u))), min(~firstLeadingBit(vec4<i32>(37893i, 52896i, -1i, -10782i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(2430i, 0i, -7728i, 0i))) | (vec4<i32>(1i, 1i, 1i, 1i) ^ vec4<i32>(0i, -3693i, _wgslsmith_div_i32(27113i, 2147483647i), 1977i << (var_0.x % 32u))));
    var var_2 = _wgslsmith_add_u32(u_input.a.x & firstLeadingBit(select(u_input.b.x, _wgslsmith_dot_vec3_u32(var_0.xyz, var_0.zzz), all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global0.x)))), _wgslsmith_div_u32(~22097u, func_1(-823f, var_0.x)));
    global0 = vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(8645u, u_input.a.x), 12u)]);
    var_2 = ~_wgslsmith_mod_u32(u_input.a.x, ~4294967295u);
    var var_3 = var_1.xz;
    global1 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_add_i32(abs(20949i), reverseBits(18203i)), min(var_1.x, _wgslsmith_add_i32(var_3.x, var_1.x)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_3.x), vec2<i32>(var_1.x, var_3.x))), var_3.x)), (((var_3.x ^ 2147483647i) ^ var_3.x) ^ -(var_1.x ^ var_1.x)) & max(countOneBits(func_2(927f, Struct_3(1000f, var_1.yw, var_1.x, Struct_2(var_0.x, Struct_1(global1[_wgslsmith_index_u32(22105u, 12u)], 41134i), -704f), var_0.x), vec4<f32>(-577f, 149f, global2.x, 1204f)).b.b), -7836i >> (~u_input.b.x % 32u)), -910f, ~51646u, -var_1);
}

