struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(-1i, 2147483647i, 2147483647i), vec2<u32>(0u, 20221u), 1i, Struct_3(Struct_2(-1i, 20604u, Struct_1(1u, -326f, 0i, false), vec4<u32>(46245u, 4294967295u, 1u, 4294967295u), false), vec4<f32>(924f, -712f, 1391f, 537f), vec4<bool>(false, false, false, false), Struct_1(106261u, -1269f, -28408i, false), vec4<i32>(-1i, 0i, -1i, 2147483647i)), vec3<f32>(455f, 1641f, 438f));

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = global0.a.x <= reverseBits(select(21104i, -14616i & _wgslsmith_div_i32(global1.c, 25136i), global1.d));
    let var_1 = u_input.a.x;
    var var_2 = ~1u;
    global0 = Struct_4(vec3<i32>((i32(-1i) * -3373i) | global1.c, -5612i, ~(~(-2147483647i))) | firstLeadingBit(max(vec3<i32>(arg_1.c, var_1, var_1), vec3<i32>(-20995i, 3118i, arg_2.a))), vec2<u32>(u_input.b, 13297u), _wgslsmith_dot_vec4_i32(-max(global0.d.e & vec4<i32>(1i, global0.d.a.c.c, 1i, arg_2.c.c), global0.d.e), ~(~(-vec4<i32>(10757i, -4380i, -26895i, -2147483647i)))), global0.d, _wgslsmith_f_op_vec3_f32(-global0.e));
    var_2 = select(abs(_wgslsmith_mod_u32(0u, arg_2.c.a >> (arg_1.a % 32u))) >> (~4294967295u % 32u), ~(~max(8392u, u_input.b)), true);
    return 20407u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = select(vec3<bool>(true, false, false), vec3<bool>(all(select(arg_0.c.yxx, arg_0.c.wzw, false)) && (global1.d == any(arg_0.c.yww)), arg_2.x, !(all(global0.d.c.yxy) | arg_0.a.e)), !global1.d);
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(~arg_1.c, ~27619i), countOneBits(~global0.d.e.wy));
    let var_2 = true;
    global0 = Struct_4(firstLeadingBit(u_input.c), ~countOneBits(_wgslsmith_sub_vec2_u32(arg_0.a.d.yx, global0.b)), -2147483647i, Struct_3(Struct_2(global1.c, func_3(select(arg_0.c, global0.d.c, arg_0.c.x), arg_0.d, Struct_2(arg_1.c, 15999u, global0.d.a.c, vec4<u32>(68214u, 66511u, 7466u, 4294967295u), global1.d)), arg_1, ~vec4<u32>(30015u, 20235u, arg_0.a.b, u_input.b), arg_2.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.d.b.x, -1232f, 1310f, 1007f))))), vec4<bool>(any(!vec2<bool>(global1.d, true)), any(select(vec2<bool>(false, false), arg_0.c.zz, arg_2.x)), false, all(global0.d.c)), Struct_1(~(~61108u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, arg_1.b)))), 0i, all(arg_0.c.xxz)), ~(~vec4<i32>(var_1.x, global0.c, 6108i, 196i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -812f, arg_1.b) * arg_0.b.ywy))))));
    let var_3 = arg_1;
    return ~(~(arg_0.d.a >> (~select(52517u, var_3.a, true) % 32u)));
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = Struct_2(-7327i, ~0u, Struct_1(~(func_2(Struct_3(Struct_2(u_input.c.x, arg_0.c.a, arg_0.c, vec4<u32>(u_input.b, global1.a, 48988u, 76339u), global1.d), global0.d.b, global0.d.c, Struct_1(12787u, global1.b, u_input.a.x, arg_0.e), vec4<i32>(arg_0.c.c, global0.a.x, -23547i, u_input.a.x)), Struct_1(global0.b.x, 1029f, 1i, true), global0.d.c.zz) << (76123u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-444f)) - _wgslsmith_f_op_f32(arg_0.c.b * global0.d.b.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.d.d.b)), global1.b)), u_input.d.x, false), abs(global0.d.a.d ^ vec4<u32>(global1.a, 131400u, arg_0.b, 1u)) ^ firstTrailingBit(~countOneBits(global0.d.a.d)), global0.e.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.b.x, global0.d.d.b))));
    var var_1 = arg_0.c;
    let var_2 = select(reverseBits(vec2<u32>(firstTrailingBit(3279u), ~var_1.a)), vec2<u32>((~var_1.a ^ ~1u) >> (1u % 32u), 73814u), var_1.d);
    return u_input.a;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> Struct_3 {
    var var_0 = firstTrailingBit(abs(_wgslsmith_mult_u32(global1.a, 74710u)) | ~(~global0.d.a.d.x)) ^ func_3(vec4<bool>(false, !global1.d, !all(vec3<bool>(arg_3, false, arg_0.d.d)), global0.d.a.c.d), arg_0.a.c, Struct_2(arg_2.x, 126424u, global0.d.d, global0.d.a.d | _wgslsmith_clamp_vec4_u32(arg_0.a.d, arg_0.a.d, vec4<u32>(62145u, global1.a, 0u, global1.a)), false));
    var var_1 = !select(vec2<bool>(arg_3, global0.d.a.e), select(!arg_0.c.wy, select(vec2<bool>(true, true), arg_0.c.xw, !global0.d.c.zy), vec2<bool>(false, true)), vec2<bool>(all(select(vec3<bool>(global0.d.c.x, true, true), global0.d.c.yyx, global0.d.c.wzx)), any(global0.d.c.zwz)));
    let var_2 = _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mod_i32(0i, countOneBits(global1.c)), _wgslsmith_div_i32(max(global0.d.d.c, -2147483647i), ~arg_1)), min(-vec2<i32>(~arg_1, _wgslsmith_dot_vec3_i32(arg_0.e.xyw, vec3<i32>(20682i, global0.a.x, 1i))), -_wgslsmith_mult_vec2_i32(-vec2<i32>(arg_1, arg_0.a.c.c), arg_2 >> (arg_0.a.d.zz % vec2<u32>(32u)))));
    var var_3 = _wgslsmith_dot_vec3_i32(abs(select(vec3<i32>(_wgslsmith_dot_vec3_i32(global0.d.e.xxz, u_input.c), 0i, arg_1), u_input.a.yww >> (vec3<u32>(global1.a, arg_0.a.b, 32652u) % vec3<u32>(32u)), select(select(vec3<bool>(false, true, arg_3), vec3<bool>(false, global1.d, false), vec3<bool>(arg_0.d.d, false, false)), vec3<bool>(false, true, false), all(vec2<bool>(false, false))))), global0.a);
    var_3 = arg_2.x;
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = global0.d.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1.b)))));
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1162f, arg_3.d.a.c.b)), arg_3.e.x)))), func_1(func_4(func_4(func_4(Struct_3(Struct_2(2147483647i, global0.b.x, arg_3.d.a.c, vec4<u32>(u_input.b, global1.a, 24813u, arg_3.d.d.a), false), arg_3.d.b, vec4<bool>(true, true, true, global0.d.d.d), Struct_1(27233u, 138f, 40336i, var_0.x), arg_3.d.e), arg_2, vec2<i32>(global0.a.x, 0i), false), ~global1.c, vec2<i32>(-29237i, 7929i), global0.d.d.d), global0.a.x, global0.d.e.zy, false).a).x, arg_3.e.x > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_f_op_f32(ceil(387f))), _wgslsmith_f_op_f32(min(-865f, _wgslsmith_div_f32(-912f, arg_3.d.a.c.b))))));
    global1 = arg_3.d.a.c;
    let var_2 = global0.e.x;
    return arg_3.d.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(firstLeadingBit(global0.d.d.a), 1u, global1.c, Struct_4(abs(vec3<i32>(-global1.c, -global0.c, 23408i ^ u_input.c.x)), vec2<u32>(_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec3_u32(global0.d.a.d.wxz, global0.d.a.d.zxy)), 0u), global1.c, func_4(Struct_3(global0.d.a, global0.d.b, global0.d.c, Struct_1(global0.b.x, global1.b, -14085i, global1.d), vec4<i32>(-6657i, 1i, 0i, 2147483647i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.a), func_1(Struct_2(-2147483647i, global1.a, global0.d.a.c, vec4<u32>(u_input.b, global1.a, global1.a, global0.d.a.d.x), global1.d))), reverseBits(vec2<i32>(global0.c, -2147483647i)), true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(global1.b, 1046f), _wgslsmith_f_op_f32(-1330f - global0.d.a.c.b), _wgslsmith_f_op_f32(245f - 759f))))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-func_4(global0.d, max(~(28985i >> (1u % 32u)), var_1.c), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), max(vec2<i32>(1i, global1.c), vec2<i32>(-47989i, u_input.a.x)), _wgslsmith_mod_vec2_i32(u_input.c.yz, vec2<i32>(var_1.c, var_0.c))), !var_1.d).b.x);
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-func_4(Struct_3(func_4(Struct_3(global0.d.a, vec4<f32>(-896f, 935f, global1.b, global1.b), vec4<bool>(false, var_1.d, var_1.d, global1.d), Struct_1(var_1.a, -515f, u_input.d.x, var_1.d), vec4<i32>(var_0.c, global1.c, 0i, 6317i)), u_input.c.x, vec2<i32>(global0.d.d.c, u_input.a.x), var_1.d).a, _wgslsmith_f_op_vec4_f32(-global0.d.b), func_4(Struct_3(Struct_2(1i, var_0.a, var_0, global0.d.a.d, true), vec4<f32>(var_0.b, var_1.b, -368f, -609f), vec4<bool>(var_0.d, true, var_0.d, false), Struct_1(global1.a, 980f, 46548i, global0.d.c.x), u_input.a), 5136i, u_input.a.wy, global1.d).c, func_4(global0.d, var_1.c, vec2<i32>(3291i, u_input.a.x), global0.d.c.x).d, _wgslsmith_sub_vec4_i32(global0.d.e, vec4<i32>(-12694i, u_input.c.x, global1.c, -12765i))), ~(21519i >> (1u % 32u)), -vec2<i32>(var_0.c, u_input.c.x), false).b.x), var_0.c, !any(!func_4(Struct_3(Struct_2(0i, var_0.a, var_0, global0.d.a.d, global0.d.d.d), vec4<f32>(-425f, global0.e.x, global0.e.x, global1.b), global0.d.c, var_0, vec4<i32>(global0.d.a.c.c, 1i, global1.c, var_0.c)), global1.c, vec2<i32>(2147483647i, -13315i), false).c.zzx));
    var var_3 = func_4(global0.d, global1.c, global0.d.e.xy, -21648i != (_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, -2147483647i), global0.c, global0.d.e.x & var_1.c) << (7318u % 32u))).a.e;
    global0 = Struct_4(min(~(u_input.c & min(vec3<i32>(global1.c, 15758i, 1i), vec3<i32>(global1.c, -15988i, -1i))), u_input.a.wzz), reverseBits(global0.d.a.d.wx), func_4(func_4(func_4(Struct_3(Struct_2(var_0.c, 0u, Struct_1(4294967295u, 391f, u_input.c.x, var_0.d), global0.d.a.d, false), vec4<f32>(-1111f, 1783f, global1.b, 552f), global0.d.c, global0.d.a.c, u_input.a), countOneBits(40965i), firstTrailingBit(vec2<i32>(-1i, 8470i)), select(var_1.d, false, false)), ~u_input.a.x, abs(vec2<i32>(-1i, -47622i)), true), u_input.a.x, _wgslsmith_sub_vec2_i32(u_input.a.zz & -u_input.a.xx, vec2<i32>(func_4(global0.d, 1i, vec2<i32>(global0.a.x, 1i), global1.d).d.c, -u_input.a.x)), global1.d).e.x, Struct_3(global0.d.a, _wgslsmith_f_op_vec4_f32(trunc(global0.d.b)), global0.d.c, global0.d.a.c, vec4<i32>(-1i, global0.c, -firstLeadingBit(-2147483647i), u_input.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.b, -1000f) - vec3<f32>(-754f, global0.e.x, global0.d.b.x))))) + global0.e));
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) - -1204f), global1.b, _wgslsmith_clamp_u32(1u, ~19404u, ~func_4(global0.d, 0i, u_input.c.yx, false).d.a) >= (var_1.a & firstLeadingBit(global1.a & 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f + -209f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2317f))) * -1719f), var_0.b));
}

