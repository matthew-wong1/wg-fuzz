struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<bool, 8> = array<bool, 8>(false, true, false, true, true, true, false, true);

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(41864u, 1u, 4294967295u), vec3<u32>(8243u, 0u, 11547u), vec3<u32>(48342u, 0u, 4105u), vec3<u32>(0u, 4294967295u, 6460u), vec3<u32>(1u, 37970u, 50058u), vec3<u32>(42172u, 0u, 16142u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(16440u, 0u, 94097u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: i32, arg_3: f32) -> i32 {
    global1 = min(~vec2<u32>(arg_1, 26443u) << ((~vec2<u32>(4294967295u, 42606u) & _wgslsmith_div_vec2_u32(vec2<u32>(arg_1, global1.x), vec2<u32>(global1.x, 9471u))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(min(vec2<u32>(27963u, 0u), vec2<u32>(arg_1, global1.x)) ^ select(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x), global0[_wgslsmith_index_u32(0u, 8u)]), (vec2<u32>(4294967295u, global1.x) | vec2<u32>(4294967295u, 32216u)) | vec2<u32>(1u, 1u))) >> (abs(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 0u), ~vec2<u32>(24822u, arg_1), ~vec2<u32>(0u, arg_1)))) % vec2<u32>(32u));
    var var_0 = firstLeadingBit(vec3<u32>(34846u, 26351u, 81139u));
    global0 = array<bool, 8>();
    var var_1 = !(!(!all(!vec4<bool>(global0[_wgslsmith_index_u32(424u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]))));
    var var_2 = Struct_3(vec4<bool>(false, !any(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, true)), true, global0[_wgslsmith_index_u32(49478u, 8u)]), Struct_2(_wgslsmith_f_op_f32(trunc(147f)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(18599u, arg_1), 8u)], true, true, any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 8u)]))), u_input.a)), Struct_1(vec4<bool>(true | global0[_wgslsmith_index_u32(9130u, 8u)], global0[_wgslsmith_index_u32(arg_1, 8u)], true, true), u_input.a));
    return 2147483647i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_3(!(!vec4<bool>(arg_2.x, arg_2.x, true, !global0[_wgslsmith_index_u32(4294967295u, 8u)])), Struct_2(-1303f, Struct_1(!select(vec4<bool>(false, arg_1, arg_2.x, global0[_wgslsmith_index_u32(48671u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(41174u, 8u)], false, false, false), global0[_wgslsmith_index_u32(global1.x, 8u)]), u_input.a)), Struct_1(!(!vec4<bool>(false, arg_1, global0[_wgslsmith_index_u32(global1.x, 8u)], global0[_wgslsmith_index_u32(global1.x, 8u)])), ~(-u_input.a) << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 132u), ~vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u))));
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(global1.x), 28177u, 83833u), ~_wgslsmith_dot_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 202u), vec2<u32>(global1.x, global1.x)), ~vec2<u32>(global1.x, 1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(global1.x, 28987u), reverseBits(vec2<u32>(global1.x, global1.x)))), global1.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) + var_0.b.a) - -926f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1306f)) * 109f) + 1171f);
    let var_4 = vec2<bool>(arg_2.x, !all(vec2<bool>(false, all(var_0.a.xy))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, 1473f, 523f)))))))));
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_mult_i32(u_input.a.x, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1197f, -740f, -105f)), global1.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(-6720i, u_input.a.x), 2147483647i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(451f, 166f)))))), global0[_wgslsmith_index_u32(~4294967295u, 8u)], vec2<bool>(any(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(139818u, 8u)], false)), _wgslsmith_f_op_f32(f32(-1f) * -1140f) >= _wgslsmith_f_op_f32(ceil(486f))), 57i));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(abs(var_0.x)))), Struct_1(select(select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(global1.x, 8u)]), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.x, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]), any(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 8u)], global0[_wgslsmith_index_u32(global1.x, 8u)]))), vec4<bool>(!global0[_wgslsmith_index_u32(88021u, 8u)], true || global0[_wgslsmith_index_u32(global1.x, 8u)], all(vec4<bool>(true, false, true, false)), true), global0[_wgslsmith_index_u32(min(global1.x, global1.x), 8u)]), ~(-vec2<i32>(u_input.a.x, u_input.a.x))));
    let var_2 = select(select(select(!var_1.b.a.wxy, !(!vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 8u)], var_1.b.a.x, true)), all(!vec3<bool>(false, global0[_wgslsmith_index_u32(24369u, 8u)], var_1.b.a.x))), var_1.b.a.xxw, !var_1.b.a.yxy), vec3<bool>(any(var_1.b.a.xxy) || any(var_1.b.a), (_wgslsmith_f_op_f32(341f * -479f) < _wgslsmith_f_op_f32(-var_0.x)) && (_wgslsmith_mult_u32(0u, global1.x) > 5875u), all(select(!vec4<bool>(var_1.b.a.x, var_1.b.a.x, var_1.b.a.x, var_1.b.a.x), select(var_1.b.a, var_1.b.a, var_1.b.a), vec4<bool>(true, global0[_wgslsmith_index_u32(38395u, 8u)], global0[_wgslsmith_index_u32(global1.x, 8u)], true)))), !global0[_wgslsmith_index_u32(~1u, 8u)]);
    var var_3 = !(!vec2<bool>(true, global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 8u)]));
    return var_1.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = !arg_1.a.zx;
    let var_1 = func_2();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(842f * 1351f))), _wgslsmith_f_op_f32(f32(-1f) * -1278f))), Struct_1(vec4<bool>(all(arg_1.a.xz), !arg_1.a.x, true, true), vec2<i32>(_wgslsmith_mod_i32(1i, 31133i), firstLeadingBit(-var_1.b.x))));
    var var_3 = Struct_3(!(!select(!vec4<bool>(var_0.x, var_2.b.a.x, var_1.a.x, false), !var_1.a, select(var_1.a, arg_1.a, true))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1234f + var_2.a), _wgslsmith_f_op_f32(-var_2.a))), func_2()), arg_1);
    global1 = arg_0 << (vec2<u32>(_wgslsmith_clamp_u32(4294967295u, global1.x, global1.x) & ~select(1u, 0u, var_3.b.b.a.x), 31265u ^ global1.x) % vec2<u32>(32u));
    return firstLeadingBit(arg_1.b);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<bool, 8>();
    global2 = array<vec3<u32>, 8>();
    global2 = array<vec3<u32>, 8>();
    global2 = array<vec3<u32>, 8>();
    global2 = array<vec3<u32>, 8>();
    return Struct_1(vec4<bool>(false, min(0i ^ u_input.a.x, firstLeadingBit(arg_1.b.x)) >= func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(35371u, 4294967295u), vec2<u32>(10062u, global1.x)), func_2()).x, global0[_wgslsmith_index_u32(abs(global1.x), 8u)], global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4250u, global1.x), vec2<u32>(global1.x, global1.x)) | _wgslsmith_div_u32(0u, 44378u)), 8u)]), vec2<i32>(~_wgslsmith_mult_i32(u_input.a.x, -1i), (2147483647i | (arg_1.b.x ^ arg_1.b.x)) & min(max(1i, arg_1.b.x), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(ceil(-320f))) - _wgslsmith_f_op_f32(f32(-1f) * -175f))), func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-845f, -959f, 216f, 318f), vec4<f32>(-277f, -492f, 1000f, -995f), global0[_wgslsmith_index_u32(0u, 8u)])), vec4<f32>(-761f, -413f, 895f, 215f), !global0[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, 342f, -1746f, -728f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1098f, 128f, 588f, -706f))))), Struct_1(select(select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(global1.x, 8u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(global1.x, 8u)], true), false), !vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 8u)], true, global0[_wgslsmith_index_u32(42688u, 8u)], true), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(global1.x, 8u)]))), func_1(~vec2<u32>(global1.x, 4294967295u), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(42454u, 8u)], false, true, global0[_wgslsmith_index_u32(global1.x, 8u)]), u_input.a)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, -524f, 199f, var_0.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.a, var_0.a, -536f) * vec4<f32>(var_0.a, var_0.a, 1663f, var_0.a)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(min(1332f, 1385f))), 1376f, _wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a))), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a, var_0.a), (true & !global0[_wgslsmith_index_u32(22469u, 8u)]) || !var_0.b.a.x));
    global2 = array<vec3<u32>, 8>();
    var var_2 = 370u >> (~(~(~global1.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

