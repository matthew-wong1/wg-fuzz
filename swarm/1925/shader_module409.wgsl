struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(0u), Struct_2(0u), Struct_2(17448u), Struct_2(54246u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(23573u));

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -38598i, 1i, 1i);

var<private> global2: array<vec2<i32>, 11>;

var<private> global3: vec2<u32> = vec2<u32>(11398u, 47967u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    return global0[_wgslsmith_index_u32(~reverseBits(1u), 7u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    global1 = firstLeadingBit(max(vec4<i32>(abs(~u_input.a.x), ~(~0i), 3469i, _wgslsmith_mod_i32(-43863i, 50480i) | select(u_input.a.x, -24294i, false)), _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_2.x, -52432i, global1.x), vec4<i32>(-26708i, arg_2.x, u_input.b, -30394i), vec4<i32>(u_input.a.x, arg_2.x, global1.x, global1.x))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, 15969i, u_input.b, -2147483647i), vec4<i32>(17659i, 2147483647i, 2147483647i, -66165i), vec4<i32>(arg_2.x, 45156i, global1.x, -2147483647i)))));
    var var_0 = arg_0.x;
    let var_1 = -firstTrailingBit(~abs(min(global1.x, u_input.a.x)));
    let var_2 = 30422u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(199f, arg_0.x, 765f, 460f))))))))), ~min(vec3<u32>(var_2, 4294967295u, ~2468u), ~(~vec3<u32>(89824u, 426u, 12223u))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_3.a), var_3.b);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: bool) -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -755f);
    let var_1 = true;
    var var_2 = arg_0.a.x;
    global0 = array<Struct_2, 7>();
    let var_3 = func_3(arg_1, func_2(arg_2.x, 1973f), u_input.a);
    return min(~(~arg_0.b), arg_0.b);
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-317f)))), arg_0.c.x));
    global0 = array<Struct_2, 7>();
    global3 = abs(vec2<u32>(~0u, _wgslsmith_add_u32(func_1(arg_0.b, _wgslsmith_f_op_vec2_f32(min(arg_0.b.a.yz, vec2<f32>(142f, -398f))), _wgslsmith_f_op_vec3_f32(-arg_0.c), true != arg_0.d.x).x, ~arg_0.b.b.x << (21266u % 32u))));
    global0 = array<Struct_2, 7>();
    global1 = -vec4<i32>(max(2147483647i ^ u_input.b, _wgslsmith_sub_i32(firstTrailingBit(-28085i), global1.x)), firstTrailingBit(~countOneBits(-1i)), u_input.b, -2147483647i);
    return Struct_4(4294967295u, Struct_3(~func_1(Struct_1(arg_0.b.a, vec3<u32>(arg_0.a.x, 43732u, global3.x)), vec2<f32>(-348f, var_0), _wgslsmith_f_op_vec3_f32(-arg_0.c), true), func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-742f, -1000f), arg_0.c.xx, arg_0.d.x)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.a.x, -532f), vec2<f32>(-939f, var_0))), func_2(-816f, 272f), ~(-vec2<i32>(-26653i, -15940i))), vec3<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(266f - arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f))), arg_0.d, arg_0.b.b), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(2147483647i, 2147483647i, global1.x | -6677i)), countOneBits(vec3<i32>(u_input.a.x, ~1i, select(-2147483647i, -1i, arg_0.d.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.b.a, _wgslsmith_f_op_vec4_f32(arg_0.b.a * vec4<f32>(-529f, 744f, -229f, var_0)), !arg_0.d.x))), ~vec3<u32>(4294967295u >> (arg_0.e.x % 32u), ~arg_0.a.x, 19199u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    var var_1 = func_4(Struct_3(abs(~vec3<u32>(global3.x, 1u, global3.x) ^ ~vec3<u32>(global3.x, 1u, global3.x)), Struct_1(vec4<f32>(_wgslsmith_div_f32(-502f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(max(-398f, -247f)), 1000f), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(4294967295u, global3.x, 0u)), ~vec3<u32>(20650u, 24316u, global3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(603f, -320f, -1620f))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), ~func_1(Struct_1(vec4<f32>(-532f, 717f, -620f, -1000f), vec3<u32>(1u, global3.x, 26235u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1151f, -1000f), vec2<f32>(327f, -731f), false)), _wgslsmith_div_vec3_f32(vec3<f32>(1246f, -1000f, -334f), vec3<f32>(-1327f, -702f, -500f)), true)));
    global2 = array<vec2<i32>, 11>();
    let var_2 = 295f;
    var_1 = Struct_4(func_4(func_4(Struct_3(select(vec3<u32>(global3.x, 1u, global3.x), var_1.b.a, var_1.b.d.x), func_3(var_1.d.a.ww, global0[_wgslsmith_index_u32(var_1.d.b.x, 7u)], vec2<i32>(global1.x, global1.x)), vec3<f32>(723f, 1000f, 104f), func_4(Struct_3(var_1.d.b, Struct_1(vec4<f32>(-598f, 1408f, -1751f, var_1.b.c.x), vec3<u32>(global3.x, global3.x, global3.x)), var_1.d.a.xww, vec2<bool>(false, false), vec3<u32>(0u, 98927u, global3.x))).b.d, vec3<u32>(63336u, var_1.d.b.x, 15187u) | var_1.d.b)).b).d.b.x, func_4(func_4(var_1.b).b).b, -_wgslsmith_mod_vec3_i32(global1.xyx, vec3<i32>(select(14416i, global1.x, false), u_input.b, 4156i)), var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2 + -1601f), 178f, _wgslsmith_f_op_f32(f32(-1f) * -1252f), 900f), _wgslsmith_f_op_vec4_f32(-var_1.d.a))), _wgslsmith_f_op_f32(564f * _wgslsmith_f_op_f32(var_1.d.a.x + 1139f)), select(global1.zyz, vec3<i32>(firstLeadingBit(abs(-11945i)), -8496i, global1.x), true), var_1.b.b.a.xxz);
}

