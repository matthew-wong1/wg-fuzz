struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<u32, 16> = array<u32, 16>(18480u, 4294967295u, 40546u, 27797u, 17886u, 4294967295u, 887u, 0u, 56034u, 4294967295u, 4042u, 1u, 25964u, 9020u, 56066u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = arg_0.c.x;
    global1 = select(!select(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, false, false), true), !(!vec3<bool>(global1.x, global1.x, global1.x)), true), vec3<bool>(true, _wgslsmith_div_f32(827f, _wgslsmith_f_op_f32(f32(-1f) * -1155f)) <= _wgslsmith_f_op_f32(exp2(arg_1.c.x)), any(!(!vec3<bool>(true, true, global1.x)))), global1.x);
    global2 = array<u32, 16>();
    var var_1 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-251f, -245f) * _wgslsmith_f_op_f32(round(-1000f))));
    global2 = array<u32, 16>();
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 16u)], 8179u, 6648u), vec3<u32>(5860u, 81027u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)])) >> (~18728u % 32u), 16u)], ~(~19970u)), ~(~(~0u))), global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(856u, 16u)], 16u)], ~global2[_wgslsmith_index_u32(62072u, 16u)]) >> (~17140u % 32u), 16u)]), 16u)]);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(4294967295u, 16u)], 1u), 16u)], 11u)], global1.yz, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~3623u, min(_wgslsmith_div_u32(~1u, func_3(Struct_1(vec3<i32>(arg_0, 1i, -45011i), vec2<f32>(465f, 2511f), vec3<f32>(-221f, 2371f, 140f)), global0[_wgslsmith_index_u32(91u, 11u)])), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)] | 31946u)), 11u)], arg_0 << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(78999u, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], 4294967295u) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 41060u, global2[_wgslsmith_index_u32(4294967295u, 16u)]), countOneBits(vec3<u32>(109898u, 20400u, 4294967295u))), vec3<u32>(15392u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29758u, 16u)], 16u)], 16u)], 1u) & reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(34057u, 16u)], 1u, global2[_wgslsmith_index_u32(90019u, 16u)]))) % 32u));
    global1 = !vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.c.x - var_0.c.b.x))) >= _wgslsmith_div_f32(var_0.a.b.x, -797f), any(vec3<bool>(true, true, any(vec3<bool>(true, var_0.b.x, false)))), false);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1302f), var_0.a.c.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1426f) + 1719f), var_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.c.x))));
    let var_3 = var_0.c.c.zy;
    return Struct_2(Struct_1(vec3<i32>(arg_0, u_input.b.x, ~arg_0), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-720f, -1462f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0.c.c.x, -1706f)))), select(!vec2<bool>(any(vec2<bool>(false, false)), global1.x && var_0.b.x), !global1.yx, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32((vec4<u32>(global2[_wgslsmith_index_u32(0u, 16u)], 35580u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)]) ^ vec4<u32>(34128u, 59454u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2831u, 16u)], 16u)], global2[_wgslsmith_index_u32(19875u, 16u)])) ^ ~vec4<u32>(global2[_wgslsmith_index_u32(0u, 16u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 0u), reverseBits(firstLeadingBit(vec4<u32>(0u, global2[_wgslsmith_index_u32(48736u, 16u)], 1u, 1u)))), ~(vec4<u32>(25644u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49337u, 16u)], 16u)], global2[_wgslsmith_index_u32(111863u, 16u)], 0u) ^ vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global2[_wgslsmith_index_u32(9287u, 16u)], global2[_wgslsmith_index_u32(3277u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)])) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(65526u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63253u, 16u)], 16u)]), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2746u, 16u)], 16u)], global2[_wgslsmith_index_u32(1947u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)])) % vec4<u32>(32u))), 11u)], ~abs(u_input.a.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = 45600u;
    var var_1 = func_2(0i);
    var_1 = Struct_2(func_2(-(var_1.d & (i32(-1i) * -2316i))).a, !select(!(!vec2<bool>(global1.x, global1.x)), vec2<bool>(false, !arg_2.x), func_2(-u_input.b.x).b.x), func_2(~abs(arg_1.x)).c, var_1.a.a.x);
    let var_2 = vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24243u, 16u)], 16u)], global2[_wgslsmith_index_u32(0u, 16u)] >> (global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 16u)] ^ global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39585u, 16u)], 16u)], 16u)], 16u)], 16u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14136u, 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(1u, 16u)])), 16u)], 16u)] % 32u), 25216u) ^ max(countOneBits(firstTrailingBit(~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(83203u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20685u, 16u)], 16u)]))), _wgslsmith_mult_vec4_u32(vec4<u32>(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37248u, 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), global2[_wgslsmith_index_u32(func_3(Struct_1(arg_0.zyw, vec2<f32>(1000f, var_1.c.b.x), var_1.c.c), Struct_1(arg_0.xyy, var_1.a.b, vec3<f32>(var_1.c.c.x, var_1.a.c.x, var_1.c.c.x))), 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37698u, 16u)], 16u)], 16u)], 16u)] >> (40239u % 32u), ~2879u), ~(~vec4<u32>(32148u, 1u, global2[_wgslsmith_index_u32(59049u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]))));
    let var_3 = var_1.a;
    return ~(func_3(Struct_1(-var_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, var_1.c.c.x)), vec3<f32>(var_1.a.b.x, var_1.a.c.x, -1513f)), global0[_wgslsmith_index_u32(var_2.x, 11u)]) << (global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)] ^ global2[_wgslsmith_index_u32(0u, 16u)], 16u)]), _wgslsmith_div_u32(~16501u, var_2.x)), 16u)] % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 16>();
    global1 = vec3<bool>(_wgslsmith_div_u32(func_1(u_input.b ^ u_input.b, _wgslsmith_div_vec2_i32(u_input.a.zy, u_input.b.yw), vec4<bool>(global1.x, true, false, global1.x)), 0u) >= 1u, false, !(true || global1.x));
    var var_0 = func_2(u_input.a.x);
    global2 = array<u32, 16>();
    var_0 = func_2(var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

