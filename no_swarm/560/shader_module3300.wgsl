struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<i32>(-15752i, 0i, 31696i));

var<private> global1: Struct_1 = Struct_1(true, vec3<i32>(54390i, 2147483647i, -21827i));

var<private> global2: array<bool, 8>;

var<private> global3: Struct_1 = Struct_1(true, vec3<i32>(47777i, -34442i, 32952i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_0;
    var var_1 = min(vec2<u32>(_wgslsmith_add_u32(countOneBits(~u_input.e.x), u_input.e.x), u_input.e.x), u_input.e.zx | vec2<u32>(u_input.b, 61747u));
    global1 = arg_0;
    var_1 = ~(u_input.e.xy >> (u_input.e.ww % vec2<u32>(32u)));
    let var_2 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -296f) > _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1024f, -1000f), _wgslsmith_div_f32(-412f, 1632f))), true && global1.a, select(true, select(false | arg_1.a, !global1.a, true), !all(vec4<bool>(true, var_0.a, global0.a, global1.a)))), !vec3<bool>(true, all(vec3<bool>(arg_0.a, global2[_wgslsmith_index_u32(9848u, 8u)], global0.a)), !global3.a), !select(!select(vec3<bool>(false, true, false), vec3<bool>(global1.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, global1.a, global2[_wgslsmith_index_u32(15738u, 8u)])), vec3<bool>(global1.a || var_0.a, false, false), !vec3<bool>(true, false, arg_1.a)));
    return arg_1.b.xz;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-829f, -353f) - vec2<f32>(-1957f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-779f, -529f), vec2<f32>(1276f, 210f))) * _wgslsmith_div_vec2_f32(vec2<f32>(245f, -1487f), vec2<f32>(1651f, 588f))), vec2<bool>(true, u_input.e.x > u_input.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-899f, -2558f))));
    global2 = array<bool, 8>();
    let var_1 = arg_0;
    let var_2 = _wgslsmith_clamp_vec2_i32(global1.b.yz, _wgslsmith_div_vec2_i32(vec2<i32>(-61853i, arg_0.b.x) ^ arg_0.b.xy, func_3(arg_0, var_1)) >> (vec2<u32>(u_input.e.x, 86721u) % vec2<u32>(32u)), reverseBits(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(-1i), -u_input.d), global0.b.x)));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(select(var_0.x, -728f, !arg_0.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> vec4<f32> {
    global2 = array<bool, 8>();
    global2 = array<bool, 8>();
    var var_0 = !vec4<bool>(any(vec3<bool>(true, true, any(vec4<bool>(true, false, global1.a, global0.a)))), false, all(vec4<bool>(global1.a, global3.a || global3.a, global3.a, any(vec4<bool>(global2[_wgslsmith_index_u32(17114u, 8u)], global1.a, false, true)))), all(!vec4<bool>(global3.a, true, false, global0.a)));
    global0 = Struct_1(!(!global3.a) || false, select(global0.b, _wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.a, 0i, -2147483647i)), vec3<i32>(-664i, abs(-1i), global3.b.x)), vec3<bool>(-9080i <= (global1.b.x & 0i), arg_0.x <= _wgslsmith_div_u32(arg_0.x, u_input.c), arg_0.x > countOneBits(1u))));
    let var_1 = -1000f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_1, 1139f, _wgslsmith_f_op_f32(round(185f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, _wgslsmith_f_op_f32(abs(arg_1)), arg_1, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(global1.a, vec3<i32>(-11909i, global3.b.x, global3.b.x)), global3.b.x)), _wgslsmith_f_op_f32(825f + -1071f), arg_1, var_1)), vec4<bool>((u_input.b <= u_input.c) && true, all(select(vec2<bool>(false, global1.a), vec2<bool>(false, var_0.x), vec2<bool>(global0.a, global3.a))), any(!var_0.yyw), true))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = vec3<u32>(u_input.c, _wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(~u_input.e.wyy, vec3<u32>(39148u, 52326u, 1u) & vec3<u32>(u_input.e.x, 44225u, 21717u)), u_input.e.xwz, vec3<bool>(arg_1.x < arg_1.x, true, global3.a)), vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.e.wz, u_input.e.zz & u_input.e.zy), u_input.e.x, u_input.e.x)), u_input.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, 1000f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-732f, -646f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - vec2<f32>(-127f, arg_1.x)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), 2351f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))))), arg_0));
    var var_2 = any(!(!select(vec4<bool>(true, global3.a, false, global3.a), vec4<bool>(global3.a, arg_0.x, true, arg_0.x), !vec4<bool>(false, global3.a, global3.a, global3.a))));
    global1 = Struct_1(all(vec4<bool>(!all(vec2<bool>(false, false)), false, true, firstTrailingBit(var_0.x) > _wgslsmith_dot_vec3_u32(u_input.e.zxw, u_input.e.xzx))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, global1.b.x, -1i), vec3<i32>(select(0i, -4768i, true), -13810i, global1.b.x)), _wgslsmith_add_vec3_i32(global1.b, global0.b), ~global3.b));
    global0 = Struct_1(!global0.a, abs(global3.b));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(arg_1.wz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(floor(var_1.x))), 738f))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(727f))) + -569f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(1728f - -1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f - 2235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1357f - -1000f))) - _wgslsmith_f_op_vec2_f32(func_5(vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(16879u, 4294967295u, 81710u, 4294967295u), _wgslsmith_f_op_f32(func_2(Struct_1(true, vec3<i32>(global1.b.x, arg_1.b.x, 20368i)), -16004i)))))))));
    var var_2 = all(vec2<bool>(global3.a, true));
    global0 = arg_1;
    global0 = arg_1;
    return Struct_1(global2[_wgslsmith_index_u32(62885u, 8u)], ~global0.b);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    var var_0 = ~(~func_1(vec3<bool>(true, !arg_1.x, false), Struct_1(global3.a, global3.b), ~abs(global3.b.x)).b.x);
    return 15495i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(31999u << (~(~1u) % 32u), 8u)], vec3<i32>(-11113i, abs(func_6(func_1(vec3<bool>(global3.a, false, true), Struct_1(false, global3.b), global0.b.x), select(vec4<bool>(global1.a, false, global0.a, global3.a), vec4<bool>(true, true, false, global1.a), false))), 0i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(451f)) + -1451f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) + -1422f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-955f - 1162f)), 824f))));
    let var_2 = 4294967295u;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -256f);
    global2 = array<bool, 8>();
    var var_3 = abs(vec2<u32>(u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, var_2), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2, u_input.b), vec2<u32>(var_2, var_2))) | var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1941f, -364f, -696f, 330f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, -1765f, 236f, 938f)), vec4<f32>(-1607f, -751f, 1492f, 787f)))));
}

