struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: vec3<i32>;

var<private> global1: Struct_4 = Struct_4(-1303f, true, vec4<u32>(4294967295u, 1u, 6868u, 4294967295u), Struct_2(vec3<u32>(28213u, 1u, 0u), true, vec2<u32>(0u, 13649u)), -1000f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(187f, 1112f, arg_2))), vec3<f32>(global1.e, -1038f, 1189f)))))));
    global0 = u_input.a.yyx;
    var var_1 = global1.d.b;
    let var_2 = global1.c;
    global0 = vec3<i32>(arg_0 | _wgslsmith_sub_i32(~global0.x, 27695i), -1i, _wgslsmith_sub_i32(~(~2147483647i), u_input.a.x));
    return 1u >= _wgslsmith_dot_vec4_u32(global1.c, _wgslsmith_sub_vec4_u32(~reverseBits(global1.c), vec4<u32>(1u, global1.c.x, arg_1.x, arg_1.x)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-57351i, ~(-23779i >> (arg_0.a.x % 32u))), vec2<i32>(u_input.a.x, u_input.a.x)), !select(vec2<bool>(func_2(-20878i, global1.d.a, global1.e), arg_2 == arg_1.a.x), vec2<bool>(true, global1.b == arg_1.a.x), !vec2<bool>(arg_1.a.x, true)), 1355f, true);
    var var_1 = Struct_5(!(!(!arg_1.a)));
    var_1 = arg_1;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(min(vec2<i32>(-33624i, 0i), ~vec2<i32>(-1i, 1i))), var_0.a), _wgslsmith_mod_i32(abs(_wgslsmith_mult_i32(2147483647i, var_0.a.x) | -u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.xyx, ~vec3<i32>(global0.x, -21979i, u_input.a.x)), -22767i | u_input.a.x, -18406i)));
    var_1 = arg_1;
    return Struct_1(vec2<i32>(2147483647i & _wgslsmith_clamp_i32(global0.x, var_0.a.x, global0.x), max(7227i, reverseBits(var_2))) & ~_wgslsmith_mult_vec2_i32(select(vec2<i32>(var_2, 2598i), global0.zz, vec2<bool>(false, true)), u_input.a.xw), select(!select(var_0.b, vec2<bool>(false, arg_0.b), all(arg_1.a)), arg_1.a.yx, !arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.a, -1081f))), var_0.c), true);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_3 {
    global1 = Struct_4(-237f, true, (((global1.c >> (vec4<u32>(4294967295u, global1.d.c.x, global1.d.c.x, u_input.b) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u))) ^ global1.c) << (_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.b, 57183u, 0u, 4294967295u) | vec4<u32>(4294967295u, 0u, 25594u, 4294967295u)), ~(~vec4<u32>(global1.c.x, 14697u, 1u, 0u))) % vec4<u32>(32u)), global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c)) * _wgslsmith_f_op_f32(-global1.e)));
    let var_0 = vec4<bool>((firstLeadingBit(func_3(Struct_2(global1.c.ywy, arg_3, global1.c.xy), arg_0, false, vec2<u32>(4294967295u, 55918u)).a.x) <= _wgslsmith_div_i32(2147483647i << (global1.d.c.x % 32u), _wgslsmith_clamp_i32(1i, arg_1.a.x, arg_1.a.x))) && true, !any(select(select(vec4<bool>(arg_2, arg_0.a.x, true, true), vec4<bool>(true, arg_0.a.x, false, true), true), vec4<bool>(arg_1.d, arg_0.a.x, arg_2, true), any(vec4<bool>(global1.b, true, false, arg_1.d)))), global1.d.b, true);
    var var_1 = any(var_0);
    global1 = Struct_4(func_3(global1.d, Struct_5(select(!arg_0.a, vec3<bool>(false, true, arg_3), !vec3<bool>(false, var_0.x, true))), firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) <= max(firstLeadingBit(arg_1.a.x), ~global0.x), ~(~vec2<u32>(global1.c.x, 0u))).c, arg_1.b.x, _wgslsmith_mult_vec4_u32(global1.c, ~(~vec4<u32>(global1.d.c.x, 4294967295u, u_input.b, global1.c.x))), global1.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-499f, _wgslsmith_f_op_f32(-global1.a), arg_0.a.x)), _wgslsmith_f_op_f32(global1.a + arg_1.c))));
    let var_2 = global1.c;
    return Struct_3(Struct_2(_wgslsmith_sub_vec3_u32(global1.c.wyy, _wgslsmith_clamp_vec3_u32(vec3<u32>(48562u, var_2.x, u_input.b) ^ vec3<u32>(1u, var_2.x, 0u), max(global1.c.yxw, vec3<u32>(var_2.x, u_input.b, u_input.b)), select(global1.d.a, var_2.zyx, var_0.yyx))), true, var_2.yy));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = global1.b | any(select(vec2<bool>(true, true), select(vec2<bool>(true, global1.d.b), select(vec2<bool>(true, false), vec2<bool>(true, global1.d.b), vec2<bool>(global1.b, global1.d.b)), vec2<bool>(false, true)), select(!vec2<bool>(global1.b, true), !vec2<bool>(true, global1.d.b), !global1.b)));
    let var_1 = func_4(Struct_5(select(vec3<bool>(true, true, true), !select(vec3<bool>(global1.d.b, true, false), vec3<bool>(true, true, false), vec3<bool>(global1.d.b, global1.d.b, false)), global1.d.b)), func_3(Struct_2(global1.d.a, func_2(_wgslsmith_sub_i32(global0.x, -81796i), ~vec3<u32>(399u, 17203u, 0u), _wgslsmith_f_op_f32(-global1.a)), vec2<u32>(_wgslsmith_div_u32(u_input.b, 17516u), ~arg_1)), Struct_5(vec3<bool>(global1.b, func_2(-2147483647i, global1.c.xzz, 187f), true)), select(!global1.b, !global1.b, !(arg_1 >= arg_1)), ~_wgslsmith_mod_vec2_u32(~global1.d.c, global1.c.yw)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, u_input.a.x), firstTrailingBit(~u_input.a.xxx)) <= -(min(u_input.a.x, u_input.a.x) ^ u_input.a.x), global1.b);
    var var_2 = firstTrailingBit(_wgslsmith_add_u32(1206u, ~global1.d.a.x)) | max(~global1.c.x, 71097u << ((~arg_1 >> (u_input.b % 32u)) % 32u));
    let var_3 = ~12409u;
    let var_4 = global1.d.c.x;
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(global0.xy), -firstLeadingBit(~select(global0.xz, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(func_1(2207f, 4294967295u), ~_wgslsmith_div_i32(~1i, reverseBits(-78233i)), _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mod_i32(-28622i, -25048i)), 1i)) ^ min((_wgslsmith_sub_vec3_i32(u_input.a.xwz, u_input.a.zzz) | -u_input.a.yzx) ^ abs(vec3<i32>(u_input.a.x, global0.x, 0i) >> (global1.c.zzy % vec3<u32>(32u))), reverseBits(~(-u_input.a.yyy)));
    var var_0 = false;
    var var_1 = -abs(vec4<i32>(countOneBits(global0.x), -u_input.a.x, ~1i, _wgslsmith_dot_vec3_i32(u_input.a.xwx, u_input.a.xwy))) ^ ~vec4<i32>(_wgslsmith_mod_i32(abs(global0.x), countOneBits(global0.x)), reverseBits(1i), global0.x, ~abs(global0.x));
    let var_2 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-global1.e)) > -121f;
    var var_3 = Struct_1(~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-global0.zx, -var_1.yz), _wgslsmith_div_vec2_i32(global0.zx, vec2<i32>(2147483647i, var_1.x)) | vec2<i32>(var_1.x, 29854i)), vec2<bool>(true, true), global1.e, all(!vec3<bool>(true, !global1.d.b, true)));
    var_1 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, global0.x, -3826i, var_1.x), -vec4<i32>(-5281i, -1i, var_1.x, -1i), true), -vec4<i32>(global0.x, var_3.a.x, global0.x, global0.x)), reverseBits(countOneBits(vec4<i32>(-2147483647i, global0.x, -11236i, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x);
}

