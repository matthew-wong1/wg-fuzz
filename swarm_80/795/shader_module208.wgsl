struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
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

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_2, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = select(!select(!(!vec2<bool>(true, global0.x)), select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, global0.x))), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), select(vec2<bool>(false, true), vec2<bool>(global0.x, true), global0.x))), select(!(!vec2<bool>(global0.x, false)), vec2<bool>(any(vec4<bool>(global0.x, false, global0.x, false)) | all(vec4<bool>(global0.x, false, global0.x, true)), global0.x), any(vec2<bool>(true || global0.x, true))), vec2<bool>(true, true));
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-937f, -1793f, -907f) - vec3<f32>(1000f, -1685f, -1903f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2940f, 829f, -379f))), any(vec4<bool>(global0.x, false, false, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, 1309f, -339f))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -867f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1547f))), _wgslsmith_div_f32(-2059f, -513f))), -778f, _wgslsmith_f_op_f32(select(283f, -994f, true)) == _wgslsmith_f_op_f32(1020f - 1f), vec4<u32>(13286u, max(4294967295u, u_input.b.x), 2384u, max(firstTrailingBit(1u), 53374u)));
    var var_1 = var_0.d.x >= ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_0.d, vec4<u32>(19347u, 0u, u_input.a, u_input.b.x)) ^ ~vec4<u32>(0u, 4564u, u_input.a, 654u), ~countOneBits(vec4<u32>(var_0.d.x, var_0.d.x, 0u, 1u)));
    var var_2 = global1[_wgslsmith_index_u32(8015u, 31u)];
    return var_0.d.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = !vec2<bool>(arg_3.c, select(arg_3.c, true, arg_1.d.c));
    var var_0 = arg_3;
    let var_1 = arg_3;
    global0 = select(select(select(vec2<bool>(false, global0.x), vec2<bool>(true, any(vec4<bool>(var_1.c, false, false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, arg_1.d.c), true)), !select(!vec2<bool>(global0.x, false), select(vec2<bool>(arg_1.c.c, true), vec2<bool>(var_1.c, false), true), !vec2<bool>(global0.x, arg_1.d.c)), any(select(select(vec4<bool>(false, arg_3.c, var_1.c, global0.x), vec4<bool>(arg_1.c.c, true, var_0.c, false), vec4<bool>(var_0.c, false, var_0.c, arg_3.c)), vec4<bool>(var_0.c, var_0.c, false, arg_3.c), vec4<bool>(true, false, true, true)))), select(!vec2<bool>(any(vec3<bool>(var_0.c, true, var_0.c)), true), !vec2<bool>(!var_1.c, any(vec4<bool>(false, arg_3.c, true, var_0.c))), !(!select(arg_1.c.c, arg_1.d.c, true))), any(select(!vec4<bool>(arg_1.c.c, true, false, global0.x), select(vec4<bool>(arg_1.c.c, var_1.c, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, false, arg_1.d.c), vec4<bool>(arg_3.c, arg_1.d.c, var_0.c, global0.x)), any(vec4<bool>(true, global0.x, arg_1.d.c, var_0.c))), _wgslsmith_mult_i32(u_input.c, 0i) < _wgslsmith_dot_vec4_i32(vec4<i32>(17396i, u_input.d, u_input.c, 0i), vec4<i32>(11618i, u_input.d, 1i, 1i)))));
    var var_2 = var_1.d & arg_1.d.d;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.a), u_input.b.x), 31u)];
    global0 = vec2<bool>(false, arg_1 >= _wgslsmith_div_f32(arg_0.b, 351f));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~u_input.d), u_input.d | 1i), vec2<i32>(~2147483647i, _wgslsmith_sub_i32(u_input.c, 3162i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, u_input.c)))) ^ _wgslsmith_mod_i32(40182i, ~_wgslsmith_sub_i32(-16786i ^ u_input.d, u_input.c));
    let var_2 = ~vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(var_0.d.d.x), firstLeadingBit(0u) | arg_0.d.x), 4294967295u, var_0.b.x >> ((~0u ^ var_0.d.d.x) % 32u), _wgslsmith_dot_vec2_u32(abs(abs(u_input.b)), arg_0.d.yy));
    var var_3 = select(arg_0.c, true, all(func_4(-u_input.c >> (func_3() % 32u), Struct_2(arg_0.a, ~vec2<u32>(1u, var_2.x), Struct_1(arg_0.a, 279f, true, var_2), arg_0, _wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(arg_1, -1199f, -1214f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, arg_0.b, var_0.e.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0.a.x, -1327f)), _wgslsmith_f_op_f32(-arg_0.a.x), true, _wgslsmith_add_vec4_u32(arg_0.d, vec4<u32>(0u, u_input.a, var_0.b.x, arg_0.d.x))))));
    return global1[_wgslsmith_index_u32((select(1u, 35177u, true) & 0u) >> (u_input.b.x % 32u), 31u)];
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_2, 31>();
    var var_0 = arg_2.c.d.ywy;
    let var_1 = arg_2;
    var var_2 = func_2(arg_2.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1106f) + _wgslsmith_div_f32(arg_3, arg_3))), var_1.a.x)));
    global1 = array<Struct_2, 31>();
    return Struct_1(var_1.c.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)))), -437f)), all(select(vec2<bool>(arg_2.c.c, any(vec4<bool>(global0.x, global0.x, true, true))), vec2<bool>(-30320i >= u_input.c, arg_2.c.c), !(!vec2<bool>(var_1.d.c, false)))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(min(var_1.b.x, 4294967295u), firstTrailingBit(var_0.x), 1u, ~var_1.c.d.x), vec4<u32>(1u << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, 1u), arg_2.c.d.xzx), var_0.x, ~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 31>();
    global0 = vec2<bool>(global0.x, global0.x);
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1535f, 2206f, 474f) * vec3<f32>(-907f, 903f, 989f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-222f, -293f, 893f), vec3<f32>(1647f, -1000f, -699f)))))), _wgslsmith_mult_vec2_u32(u_input.b, abs(firstTrailingBit(vec2<u32>(63492u, 1u))) >> (u_input.b % vec2<u32>(32u))), func_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.a), vec3<u32>(1u, u_input.a, 33911u)), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 80865u))), firstTrailingBit(38010u), global1[_wgslsmith_index_u32(67950u, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(675f)))))), func_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1266f, -1955f, -403f) - vec3<f32>(-934f, 333f, 508f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(755f, 645f, 338f) + vec3<f32>(-191f, -119f, 717f))), 694f, true, select(vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<bool>(false, false, global0.x, false)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 8566u), vec4<u32>(41510u, 19311u, u_input.b.x, 1u), vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(1003f - 1815f)).d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), func_1(~u_input.a, u_input.a, func_2(func_1(u_input.b.x, u_input.a, Struct_2(vec3<f32>(-1000f, -760f, -1505f), vec2<u32>(4294967295u, 4137u), Struct_1(vec3<f32>(-1805f, 531f, 797f), 1206f, false, vec4<u32>(12272u, 32068u, u_input.a, u_input.b.x)), Struct_1(vec3<f32>(-236f, -211f, 2229f), 1374f, global0.x, vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)), vec3<f32>(1000f, 335f, -570f)), -389f), -1523f), _wgslsmith_f_op_f32(f32(-1f) * -1827f)).a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1019f, -970f, false)), 1327f))))));
    var var_1 = select(!(!select(!vec3<bool>(false, false, global0.x), vec3<bool>(true, false, false), vec3<bool>(false, true, var_0.c.c))), !(!(!(!vec3<bool>(var_0.c.c, false, var_0.d.c)))), false);
    var var_2 = !select(vec4<bool>(!var_1.x, !any(vec3<bool>(false, false, global0.x)), !any(vec3<bool>(var_1.x, true, global0.x)), var_1.x), !(!(!vec4<bool>(false, false, global0.x, false))), !vec4<bool>(!global0.x, global0.x, func_4(-1i, Struct_2(var_0.e, var_0.d.d.zy, Struct_1(vec3<f32>(-2228f, 1201f, var_0.e.x), var_0.a.x, false, var_0.d.d), var_0.c, var_0.c.a), var_0.a, Struct_1(var_0.c.a, -249f, true, vec4<u32>(u_input.b.x, 0u, var_0.b.x, var_0.b.x))).x, u_input.c >= u_input.d));
    var_1 = select(var_2.ywx, select(!vec3<bool>(any(vec4<bool>(var_1.x, false, true, false)), true, any(var_1.zy)), select(var_2.yyx, var_2.wzw, any(var_1.xx)), !var_0.d.c), select(select(vec3<bool>(false, true, true), !var_2.wwx, true), vec3<bool>(false, var_1.x || !global0.x, var_1.x), !(!var_2.ywz)));
    let var_3 = var_0.c.a;
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(func_2(Struct_1(var_0.d.a, var_0.e.x, var_1.x, var_0.c.d), var_0.d.a.x).d, _wgslsmith_div_f32(var_3.x, 709f)).e.xy * var_3.yz)));
}

