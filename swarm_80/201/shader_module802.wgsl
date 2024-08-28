struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(-(~vec3<i32>(-32038i, 7643i, 32747i)) >> (arg_0 % vec3<u32>(32u))), vec3<i32>(56612i, -1i, _wgslsmith_mult_i32(-1i, ~abs(0i))), countOneBits(~vec3<i32>(1i, 1i, 1i)) | firstTrailingBit(vec3<i32>(1i >> (arg_1.a.x % 32u), _wgslsmith_add_i32(-19577i, 24120i), 2147483647i)));
    return select(select(!vec2<bool>(false, !global0.x), select(global0.xy, select(global0.xy, global0.zx, global0.x | global0.x), select(global0.yy, select(global0.zy, vec2<bool>(true, global0.x), vec2<bool>(false, global0.x)), select(global0.yy, vec2<bool>(true, global0.x), global0.zx))), !select(vec2<bool>(false, global0.x), !vec2<bool>(global0.x, global0.x), select(global0.yx, global0.yx, vec2<bool>(false, global0.x)))), vec2<bool>(global0.x == any(!vec4<bool>(true, true, true, global0.x)), !select(global0.x, all(vec4<bool>(false, global0.x, global0.x, true)), true)), !select(vec2<bool>(true, any(vec4<bool>(true, false, false, true))), global0.zy, global0.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_5(min(arg_1 << (u_input.a.zz % vec2<u32>(32u)), vec2<u32>(~u_input.a.x ^ ~53761u, ~0u)));
    var var_1 = -2147483647i;
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1198f - 811f) - -1017f)), -1294f, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 35403i, 18341i)), ~vec3<i32>(0i, -68844i, -23666i) << (u_input.a.xzy % vec3<u32>(32u))), Struct_1(vec2<bool>(arg_0.x, false), _wgslsmith_add_u32(0u, abs(arg_1.x)))), Struct_1(select(vec2<bool>(true, true), !(!global0.yz), vec2<bool>(any(vec3<bool>(true, false, arg_0.x)), true)), ~firstTrailingBit(57978u ^ var_0.a.x)), Struct_1(!select(!arg_0, select(vec2<bool>(arg_0.x, false), arg_0, arg_0.x), select(arg_0, global0.xz, global0.zx)), 14370u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-567f + -142f), -273f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1675f)))), -(~(vec3<i32>(-24165i, 12895i, -19155i) << (arg_2.wxw % vec3<u32>(32u)))), Struct_1(select(func_3(vec3<u32>(46172u, 53482u, 65619u), Struct_5(var_0.a)), select(vec2<bool>(arg_0.x, true), global0.zz, vec2<bool>(true, global0.x)), vec2<bool>(false, false)), u_input.a.x)), 8025u);
    var_1 = i32(-1i) * -36744i;
    var var_3 = Struct_4(Struct_3(Struct_2(-1379f, var_2.a.b, var_2.a.c, var_2.c), var_2.c, var_2.c, Struct_2(-636f, -478f, vec3<i32>(_wgslsmith_add_i32(21000i, -1140i), 32993i, -26077i), Struct_1(vec2<bool>(var_2.c.a.x, global0.x), _wgslsmith_dot_vec4_u32(u_input.a, arg_2))), 38341u));
    return var_2.c;
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = select(select(vec3<bool>(!global0.x, true, false), !select(vec3<bool>(true, arg_0.a.x, global0.x), !vec3<bool>(global0.x, arg_0.a.x, false), u_input.a.x <= 3227u), global0.x), !vec3<bool>(!(!arg_0.a.x), false, arg_0.a.x), !vec3<bool>(_wgslsmith_f_op_f32(abs(-204f)) <= _wgslsmith_f_op_f32(trunc(808f)), all(!vec4<bool>(global0.x, arg_0.a.x, global0.x, true)), true));
    var var_0 = any(vec2<bool>(arg_0.a.x, any(select(vec3<bool>(true, global0.x, arg_0.a.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(arg_0.a.x, global0.x, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, true)), true))));
    var var_1 = 27332u;
    var_1 = ~(~u_input.a.x);
    let var_2 = 4294967295u;
    return -481f;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_5 {
    global0 = vec3<bool>(!any(vec4<bool>(false || global0.x, true, arg_2.a.d.a.x, true)), (_wgslsmith_f_op_f32(func_4(func_2(arg_2.a.d.a, vec2<u32>(arg_2.d.d.b, 14893u), vec4<u32>(45592u, arg_0, 1u, arg_2.d.d.b)))) >= arg_2.a.a) & ((arg_0 <= arg_2.c.b) & !(!arg_2.c.a.x)), any(select(vec3<bool>(true, !global0.x, arg_2.d.d.a.x), select(!vec3<bool>(arg_2.d.d.a.x, true, false), !vec3<bool>(false, global0.x, true), vec3<bool>(true, false, arg_2.c.a.x)), vec3<bool>(arg_2.c.a.x, arg_2.d.d.b >= 36197u, true))));
    global0 = vec3<bool>(true, global0.x, true);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(-arg_1)))) + vec3<f32>(-132f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -162f))), arg_1.x)));
    global0 = vec3<bool>(arg_2.d.d.a.x, true, all(!vec3<bool>(true, global0.x, arg_2.d.d.a.x)) != select(false, true, arg_2.d.d.a.x));
    var var_1 = _wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(-13722i, arg_2.a.c.x & arg_2.d.c.x), min(~arg_2.a.c.x, arg_2.d.c.x), _wgslsmith_sub_i32(max(2147483647i, 19609i), countOneBits(arg_2.a.c.x)), _wgslsmith_clamp_i32(arg_2.d.c.x, min(-1i, 9806i), _wgslsmith_mult_i32(-1i, -16995i))), -vec4<i32>(5908i, min(~arg_2.a.c.x, 0i), 1i, arg_2.d.c.x));
    return Struct_5(~(~(vec2<u32>(1u, 1u) & u_input.a.yw)) << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, ~u_input.a.x), u_input.a.ww) % vec2<u32>(32u)));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_5) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-370f, -1000f, 1788f), vec3<f32>(-703f, 132f, 1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(218f, 2352f, 519f), vec3<f32>(766f, -708f, 2737f), vec3<bool>(arg_0, global0.x, global0.x))), !vec3<bool>(arg_1.x, true, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1690f, 1113f, -191f) + vec3<f32>(-816f, 261f, -434f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(488f, -1891f, 585f)))), !arg_1)))));
    let var_1 = _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.a.x, arg_2.a.x, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.x, arg_2.a.x, u_input.a.x, 4294967295u), u_input.a)), 57624u, _wgslsmith_mult_u32(max(firstTrailingBit(arg_2.a.x), arg_2.a.x), u_input.a.x), 1u), ~firstLeadingBit(u_input.a));
    var var_2 = false;
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1364f)), vec3<f32>(var_0.x, 1759f, var_0.x)));
    let var_3 = select(select(vec4<bool>(!(!arg_1.x), !all(global0.xx), arg_0, func_3(~vec3<u32>(u_input.a.x, var_1.x, 4294967295u), arg_2).x), !vec4<bool>(any(arg_1.zz), !arg_1.x, !global0.x, global0.x), global0.x), vec4<bool>(arg_0, 6641i < _wgslsmith_clamp_i32(max(58845i, 0i), 13498i, -2147483647i), arg_1.x, true), func_3(_wgslsmith_mod_vec3_u32(~vec3<u32>(107297u, u_input.a.x, 4005u), vec3<u32>(arg_2.a.x, 4294967295u, 1u) ^ u_input.a.xxy), arg_2).x & true);
    return !vec3<bool>(!any(!var_3.wy), all(select(vec3<bool>(arg_1.x, false, arg_0), !arg_1, var_3.yzw)), _wgslsmith_f_op_f32(floor(var_0.x)) != 1176f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!vec3<bool>(global0.x, false & global0.x, false), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, global0.x, false), false), vec3<bool>(true, global0.x, true), global0.x)), select(!func_5(global0.x, vec3<bool>(global0.x, global0.x, true), func_1(61176u, vec3<f32>(-393f, -761f, 581f), Struct_3(Struct_2(-1085f, 1000f, vec3<i32>(-1i, 1i, -1i), Struct_1(global0.zy, u_input.a.x)), Struct_1(global0.xz, u_input.a.x), Struct_1(global0.xx, u_input.a.x), Struct_2(166f, -150f, vec3<i32>(1i, 2147483647i, 1i), Struct_1(vec2<bool>(true, global0.x), u_input.a.x)), u_input.a.x))), vec3<bool>(true, global0.x, false), global0.x));
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(round(188f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-149f - -984f), 1f) * 986f), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-5252i, 11802i, 2147483647i), vec3<i32>(48539i, -1i, -9849i), global0.x), vec3<i32>(-44230i, -2147483647i, -1i), reverseBits(vec3<i32>(-13062i, -20250i, 2147483647i))) & -vec3<i32>(19617i, -1i, -21240i), Struct_1(func_5(func_5(true, vec3<bool>(global0.x, global0.x, true), Struct_5(u_input.a.yy)).x, select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x)), Struct_5(vec2<u32>(var_0, u_input.a.x))).xx, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 15840u), u_input.a.yzx) ^ _wgslsmith_mod_u32(34674u, 47824u))), Struct_1(vec2<bool>(false, global0.x), ~var_0), Struct_1(vec2<bool>(global0.x, func_2(!vec2<bool>(false, global0.x), u_input.a.yz, ~vec4<u32>(var_0, 4294967295u, 57984u, u_input.a.x)).a.x), ~reverseBits(u_input.a.x ^ u_input.a.x)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-974f + 705f), -110f, global0.x)))), -vec3<i32>(1i, 1i, 1i), Struct_1(select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), global0.yx), firstLeadingBit(abs(4315u)))), select(u_input.a.x, abs(4294967295u) | u_input.a.x, global0.x) << (~_wgslsmith_mult_u32(4294967295u, abs(var_0)) % 32u));
    let var_2 = var_1.d;
    let var_3 = select(!select(vec4<bool>(var_1.a.d.a.x, true, 9275u == var_2.d.b, !global0.x), select(select(vec4<bool>(false, false, false, global0.x), vec4<bool>(false, false, var_2.d.a.x, false), vec4<bool>(true, var_1.a.d.a.x, global0.x, false)), !vec4<bool>(false, global0.x, false, false), var_2.d.a.x & false), !select(vec4<bool>(var_2.d.a.x, var_2.d.a.x, false, var_1.b.a.x), vec4<bool>(true, false, var_1.b.a.x, var_2.d.a.x), vec4<bool>(false, true, global0.x, false))), select(!(!select(vec4<bool>(global0.x, true, false, true), vec4<bool>(true, false, var_2.d.a.x, global0.x), vec4<bool>(false, true, false, true))), select(!vec4<bool>(false, global0.x, var_1.c.a.x, true), !select(vec4<bool>(var_1.d.d.a.x, true, false, true), vec4<bool>(var_2.d.a.x, var_1.b.a.x, false, true), var_1.c.a.x), func_3(select(vec3<u32>(1u, var_0, var_1.a.d.b), vec3<u32>(1u, var_0, 0u), var_1.b.a.x), func_1(u_input.a.x, vec3<f32>(var_1.d.a, var_1.d.b, var_1.a.a), var_1)).x), true), global0.x);
    let var_4 = Struct_4(var_1);
    var var_5 = u_input.a.ywy >> (firstTrailingBit(_wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.a.wzz), u_input.a.wzx) ^ firstTrailingBit(vec3<u32>(var_1.a.d.b, var_0, u_input.a.x))) % vec3<u32>(32u));
    let var_6 = var_4.a;
    var_5 = ~u_input.a.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(853f, var_6.a.b) + vec2<f32>(var_1.d.b, -1663f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a.a.a, 771f) + vec2<f32>(var_6.a.a, var_2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_4.a.a.b, var_6.d.b)))), func_5(false, var_3.wxz, func_1(0u, vec3<f32>(-948f, var_6.a.a, var_2.b), var_1)).xx))), _wgslsmith_f_op_f32(func_4(var_4.a.c)), 22022u, var_5.zy, var_6.d.a);
}

