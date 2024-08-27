struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: array<u32, 19>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> vec4<f32> {
    global0 = Struct_2(all(vec4<bool>(global1.a, true, all(vec4<bool>(global0.a, global1.a, global0.a, false)), global1.a)), global1.b, ~vec4<u32>(select(firstLeadingBit(global1.c.x), _wgslsmith_mult_u32(global1.c.x, global0.c.x), global0.a || false), _wgslsmith_mult_u32(1u, 1u), global3[_wgslsmith_index_u32(4294967295u, 19u)], ~(1u & global0.c.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b, -1058f, global0.b, global0.b)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b, -131f, global1.b, global1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-505f, global0.b, global0.b, global0.b)))))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = Struct_2(arg_0.a, arg_0.b, ~global0.c);
    var var_0 = Struct_1(u_input.a.yyx, ~31590u, select(vec3<i32>(_wgslsmith_div_i32(arg_2, u_input.a.x), arg_2, -u_input.a.x) & reverseBits(u_input.a.wyx), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, arg_2, 2147483647i), vec3<i32>(u_input.a.x ^ arg_2, abs(u_input.a.x), _wgslsmith_clamp_i32(2147483647i, 45400i, u_input.a.x))), !vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 19u)] <= 0u, all(vec4<bool>(false, false, arg_1, global1.a)))), _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2, max(u_input.a.x, arg_2)) << (0u % 32u), _wgslsmith_mod_i32(1i, -26459i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2());
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + -322f)), arg_0.b)));
    var var_3 = !select(vec4<bool>(global1.a, false, true, any(vec2<bool>(arg_0.a, false))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, arg_3), vec4<bool>(false, arg_0.a, arg_0.a, true))), !all(!vec3<bool>(global1.a, true, true)));
    return Struct_1(u_input.a.wyw, ~_wgslsmith_div_u32(global1.c.x, 13558u), u_input.a.xwx, abs(0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = ~(~abs(vec2<u32>(func_1(Struct_2(true, -619f, vec4<u32>(arg_0.b, 35400u, arg_0.b, 30878u)), false, u_input.a.x, false).b, global0.c.x ^ var_0.b)));
    return Struct_2(global0.a, 325f, _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(var_0.b, 3223u, 4294967295u, var_0.b)), global0.c), global0.c, ~(~global1.c)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global1 = arg_3;
    var var_0 = true;
    var var_1 = select(select(select(!select(vec2<bool>(arg_1, arg_3.a), vec2<bool>(global1.a, global0.a), true), select(!vec2<bool>(false, arg_3.a), vec2<bool>(arg_2.a, true), select(vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, true), vec2<bool>(true, false))), 903f != _wgslsmith_f_op_f32(round(arg_2.b))), !select(select(vec2<bool>(true, true), vec2<bool>(global0.a, arg_2.a), true), select(vec2<bool>(false, false), vec2<bool>(arg_1, global0.a), arg_2.a), true), select(vec2<bool>(true, true), select(select(vec2<bool>(arg_3.a, arg_1), vec2<bool>(true, false), false), !vec2<bool>(true, arg_3.a), !global1.a), true)), vec2<bool>(true, arg_3.a), select(!vec2<bool>(!global1.a, true), vec2<bool>(all(vec4<bool>(global0.a, global0.a, false, global0.a)), !func_3(Struct_1(vec3<i32>(23686i, u_input.a.x, u_input.a.x), 24892u, u_input.a.xyx, u_input.a.x), Struct_1(u_input.a.wxx, arg_2.c.x, vec3<i32>(-16072i, -6613i, u_input.a.x), 2147483647i)).a), select(vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(false, arg_2.a), true && global0.a), !any(vec2<bool>(arg_1, arg_1)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-594f, arg_2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(109f, global1.b)))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.b, -1000f))))))));
    var var_3 = func_3(func_1(Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), global0.c >> (global1.c % vec4<u32>(32u))), global0.a, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), ~vec2<i32>(u_input.a.x, u_input.a.x)), arg_2.a), Struct_1(vec3<i32>(reverseBits(abs(-1i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec4_i32(u_input.a >> (arg_2.c % vec4<u32>(32u)), vec4<i32>(43585i, u_input.a.x, u_input.a.x, 1i))), ~36147u, _wgslsmith_clamp_vec3_i32(u_input.a.wxy, ~u_input.a.yzz, select(min(vec3<i32>(0i, u_input.a.x, 0i), vec3<i32>(1i, u_input.a.x, -1i)), vec3<i32>(22466i, 1i, -47291i) >> (vec3<u32>(global0.c.x, arg_3.c.x, arg_2.c.x) % vec3<u32>(32u)), any(vec2<bool>(var_1.x, arg_1)))), -1i));
    return 498f <= arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 19>();
    var var_0 = global3[_wgslsmith_index_u32(2392u, 19u)];
    var var_1 = select(!(!(!select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, false, false), true))), vec3<bool>(func_4(global1.c.zzz, (42129u | global0.c.x) < select(global0.c.x, 1u, global1.a), func_3(func_1(Struct_2(global1.a, -437f, global0.c), false, -25006i, false), func_1(Struct_2(true, -599f, global0.c), false, 17886i, global1.a)), func_3(func_1(Struct_2(true, global0.b, vec4<u32>(1u, 0u, 0u, global1.c.x)), global0.a, u_input.a.x, global1.a), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 4294967295u, u_input.a.zzx, -26620i))), -_wgslsmith_div_i32(0i, u_input.a.x) < -1i, all(vec4<bool>(global1.a, global1.a, true, func_3(Struct_1(vec3<i32>(1i, u_input.a.x, 68166i), global3[_wgslsmith_index_u32(global0.c.x, 19u)], vec3<i32>(-14076i, -27452i, 26234i), u_input.a.x), Struct_1(vec3<i32>(-49619i, 1i, 1i), global0.c.x, u_input.a.xxy, u_input.a.x)).a))), vec3<bool>(false, any(select(!vec4<bool>(global1.a, true, global1.a, false), !vec4<bool>(true, global1.a, global1.a, global1.a), global1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.b, -101f))) != _wgslsmith_f_op_f32(sign(global1.b))));
    var var_2 = vec4<bool>(func_4(min(~global0.c.xwy << (firstTrailingBit(global1.c.xwy) % vec3<u32>(32u)), global1.c.yyw), var_1.x, func_3(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, -34212i), u_input.a.wxy), ~global0.c.x, -vec3<i32>(20985i, u_input.a.x, -6536i), ~u_input.a.x), func_1(func_3(Struct_1(vec3<i32>(-1i, u_input.a.x, -1i), global0.c.x, u_input.a.xxx, u_input.a.x), Struct_1(vec3<i32>(u_input.a.x, 1i, -15247i), global0.c.x, u_input.a.wxy, 28821i)), true, u_input.a.x, global0.a)), Struct_2(func_4(global0.c.zyz, true, Struct_2(true, 1907f, vec4<u32>(27319u, global0.c.x, global0.c.x, 0u)), func_3(Struct_1(vec3<i32>(u_input.a.x, 40755i, u_input.a.x), global3[_wgslsmith_index_u32(4105u, 19u)], vec3<i32>(32167i, 39206i, u_input.a.x), 13823i), Struct_1(vec3<i32>(1i, 28844i, -27217i), global3[_wgslsmith_index_u32(global1.c.x, 19u)], u_input.a.zwy, u_input.a.x))), _wgslsmith_f_op_f32(step(global1.b, -773f)), global0.c)), false, global1.a, func_3(Struct_1(vec3<i32>(-u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(4294967295u, select(1u, global3[_wgslsmith_index_u32(global1.c.x, 19u)], true)), ~(~u_input.a.zxx), u_input.a.x | _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), func_1(Struct_2(true, -1000f, max(vec4<u32>(12957u, 50899u, global1.c.x, global0.c.x), global0.c)), true, u_input.a.x, false)).a);
    var var_3 = -1174f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(389f, global1.b, _wgslsmith_f_op_f32(ceil(global0.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(-global1.b))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.b, global1.b) + vec3<f32>(689f, global0.b, global0.b)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(2107f, 1000f, 113f) + vec3<f32>(global0.b, 910f, 216f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1906f, 506f, global1.b), vec3<f32>(1000f, global0.b, global0.b))))), select(!vec3<bool>(var_2.x, global1.a, false), !var_2.yww, var_2.xyw))))), (_wgslsmith_dot_vec2_u32(vec2<u32>(15835u, global1.c.x), vec2<u32>(global0.c.x, global0.c.x)) ^ global1.c.x) >> (_wgslsmith_sub_u32(func_3(Struct_1(vec3<i32>(15468i, u_input.a.x, 19750i), global3[_wgslsmith_index_u32(57221u, 19u)], vec3<i32>(-14660i, u_input.a.x, 1i), 0i), func_1(Struct_2(false, -1462f, global1.c), var_1.x, 2147483647i, true)).c.x, global1.c.x) % 32u));
}

