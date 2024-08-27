struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<bool, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    let var_0 = u_input.d.x;
    global0 = !vec2<bool>(abs(min(u_input.c, -2147483647i)) != -(u_input.c << (u_input.d.x % 32u)), !(arg_0.x <= (u_input.c & -23625i)));
    global1 = array<bool, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x)))) * -1516f) - _wgslsmith_f_op_f32(arg_1.b.b.x * _wgslsmith_f_op_f32(arg_1.a.b.x - -1000f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = arg_0.c.x;
    global0 = select(!vec2<bool>(arg_0.a.x, global0.x), select(!select(arg_0.a.ww, !arg_0.c.xw, vec2<bool>(global0.x, global0.x)), vec2<bool>(true, u_input.a >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.a), vec3<u32>(u_input.a, 32697u, 61198u))), select(arg_0.c.wx, vec2<bool>(false, any(vec2<bool>(global0.x, global0.x))), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 1u)]))), arg_0.a.xz);
    var var_1 = any(!vec2<bool>(select(all(arg_0.c.zz), global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), !select(true, arg_0.c.x, arg_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-367f, 825f)));
    let var_3 = abs(reverseBits(~vec3<u32>(4294967295u, 1u, u_input.a) | firstTrailingBit(vec3<u32>(u_input.d.x, 43339u, u_input.d.x))));
    return arg_0.d.xx;
}

fn func_2() -> Struct_1 {
    global1 = array<bool, 1>();
    global0 = vec2<bool>(all(!vec4<bool>(all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 1u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.d.x), 1u)], !global1[_wgslsmith_index_u32(3142u, 1u)], any(vec4<bool>(false, false, global0.x, global0.x)))), true);
    var var_0 = func_4(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 1u)], any(vec4<bool>(global0.x, global0.x, false, global0.x)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1293f, -515f, -1324f, -689f)))), select(vec4<bool>(0u == u_input.a, true, true, global1[_wgslsmith_index_u32(0u, 1u)]), select(!vec4<bool>(global0.x, false, false, true), !vec4<bool>(true, global1[_wgslsmith_index_u32(57070u, 1u)], true, global1[_wgslsmith_index_u32(55971u, 1u)]), true), true), -(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), vec3<f32>(-1000f, 627f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-686f)) * _wgslsmith_f_op_f32(1000f - -817f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.c, 1i, 16648i), Struct_2(Struct_1(vec4<bool>(false, false, global0.x, true), vec4<f32>(692f, -972f, 626f, 1642f), vec4<bool>(global0.x, false, false, true), vec4<i32>(-5768i, -24569i, 1i, 21577i)), Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], global1[_wgslsmith_index_u32(u_input.d.x, 1u)], true), vec4<f32>(-401f, -409f, -1849f, -512f), vec4<bool>(true, false, true, global0.x), vec4<i32>(-20342i, 992i, u_input.c, 1i))))) - -1085f))));
    var var_1 = ~vec3<i32>(-2147483647i, _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(var_0.x, 2147483647i)), u_input.c);
    var_1 = vec3<i32>(-2147483647i, -firstLeadingBit(~_wgslsmith_sub_i32(var_1.x, var_0.x)), var_1.x);
    return Struct_1(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], global1[_wgslsmith_index_u32(97735u, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]), vec4<bool>(all(vec4<bool>(global0.x, false, global0.x, false)), true, true, true), vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 1u)], all(vec3<bool>(global0.x, global1[_wgslsmith_index_u32(10686u, 1u)], global1[_wgslsmith_index_u32(u_input.d.x, 1u)])), false, any(vec3<bool>(global1[_wgslsmith_index_u32(62229u, 1u)], true, global0.x)))), !select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], global1[_wgslsmith_index_u32(u_input.d.x, 1u)], false, global0.x), vec4<bool>(true, true, true, global0.x), true), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], false)), select(vec4<bool>(global1[_wgslsmith_index_u32(39950u, 1u)], false, false, false), vec4<bool>(false, global0.x, global0.x, global1[_wgslsmith_index_u32(u_input.d.x, 1u)]), global1[_wgslsmith_index_u32(0u, 1u)])), all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], global0.x, true), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 1u)], true, true), !vec4<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(u_input.a, 1u)], false)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-894f - 148f), _wgslsmith_f_op_f32(select(2011f, -1824f, true)), _wgslsmith_f_op_f32(174f * -618f), -1469f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1732f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(528f)), _wgslsmith_f_op_f32(-1000f * -150f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-401f, 228f)), _wgslsmith_f_op_f32(func_3(vec3<i32>(1i, var_1.x, 2147483647i), Struct_2(Struct_1(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec4<f32>(-230f, 938f, 709f, -842f), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.d.x, 1u)], false), vec4<i32>(u_input.c, var_1.x, u_input.c, u_input.c)), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global0.x, global0.x, false), vec4<f32>(414f, 1489f, -1681f, -1000f), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global0.x, false, true), vec4<i32>(var_0.x, 1i, u_input.c, 87188i))))))), !vec4<bool>((global1[_wgslsmith_index_u32(u_input.d.x, 1u)] == false) || any(vec3<bool>(global0.x, false, true)), false, false, all(!vec3<bool>(true, global1[_wgslsmith_index_u32(48179u, 1u)], false))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0.x, var_0.x) | vec3<i32>(-2147483647i, u_input.c, var_1.x), vec3<i32>(u_input.c, 1i, -2147483647i)), -1i, _wgslsmith_sub_i32(var_0.x, -49809i) ^ var_0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, var_1.x, u_input.c, -62327i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -7848i, u_input.c, 1i), vec4<i32>(u_input.c, -63969i, var_0.x, var_1.x), vec4<i32>(1i, var_1.x, 1i, var_1.x)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1.b;
    var var_1 = _wgslsmith_f_op_f32(abs(948f));
    var var_2 = Struct_2(Struct_1(vec4<bool>(false, true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(u_input.d.x, 1u)), 1u)], true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1715f), 1000f, arg_1.b.b.x)), arg_1.b.a, (arg_2.a.d >> (vec4<u32>(0u, u_input.d.x, 33625u, u_input.b.x) % vec4<u32>(32u))) | reverseBits(-vec4<i32>(arg_1.a.d.x, var_0.d.x, u_input.c, -217i))), func_2());
    var var_3 = arg_2;
    let var_4 = min(0u, 4294967295u);
    return var_2.a;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1;
    var var_1 = arg_3.b.x;
    var var_2 = vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) - -771f));
    let var_3 = -firstLeadingBit(~u_input.c);
    var var_4 = _wgslsmith_f_op_f32(select(arg_3.b.x, _wgslsmith_f_op_f32(max(arg_3.b.x, arg_3.b.x)), var_0.a.x));
    return _wgslsmith_f_op_f32(-var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    var var_0 = -713f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(177f, -1000f)))), vec2<f32>(-1000f, 384f))));
    let var_2 = !(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, select(25545u, u_input.b.x, global0.x)) | 4294967295u, 1u)] != all(vec4<bool>(global0.x, global0.x, select(global1[_wgslsmith_index_u32(15190u, 1u)], false, global0.x), true)));
    let var_3 = ~u_input.b.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1145f + _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x), _wgslsmith_f_op_f32(func_5(~vec2<i32>(u_input.c, -1i), Struct_1(vec4<bool>(false, var_2, global0.x, global0.x), vec4<f32>(var_1.x, 1142f, var_1.x, 1302f), vec4<bool>(var_2, global1[_wgslsmith_index_u32(16565u, 1u)], var_2, global0.x), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~vec3<u32>(u_input.b.x, 1u, var_3), func_1(vec4<bool>(false, false, true, false), Struct_2(Struct_1(vec4<bool>(true, true, global0.x, var_2), vec4<f32>(104f, 854f, 746f, var_1.x), vec4<bool>(false, true, true, var_2), vec4<i32>(44885i, u_input.c, 0i, 1i)), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(20221u, 1u)], true, global0.x, global0.x), vec4<f32>(322f, var_1.x, -1000f, -701f), vec4<bool>(global1[_wgslsmith_index_u32(58128u, 1u)], true, global1[_wgslsmith_index_u32(var_3, 1u)], false), vec4<i32>(3911i, -2147483647i, 1i, u_input.c))), Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(var_3, 1u)], true, true, global0.x), vec4<f32>(var_1.x, -956f, var_1.x, -167f), vec4<bool>(false, global1[_wgslsmith_index_u32(var_3, 1u)], false, var_2), vec4<i32>(u_input.c, 0i, u_input.c, u_input.c)), Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(24224u, 1u)], true, global0.x), vec4<f32>(var_1.x, 1296f, 848f, var_1.x), vec4<bool>(false, true, true, var_2), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))))))), vec3<f32>(106f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1664f + 1351f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -396f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(~u_input.c, ~(-6218i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))))));
}

