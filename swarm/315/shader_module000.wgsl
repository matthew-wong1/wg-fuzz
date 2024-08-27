struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: bool,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-172f, 1495f, 1475f, -226f, 783f, 542f, -626f, 129f, 213f, 815f, 173f, 762f, 935f, 340f, -2185f);

var<private> global1: array<u32, 4> = array<u32, 4>(45622u, 1u, 14589u, 4294967295u);

var<private> global2: bool;

var<private> global3: array<i32, 5>;

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-5726i, vec4<bool>(true, false, true, false), vec4<u32>(1u, 4294967295u, 69096u, 79735u), vec4<i32>(-24554i, 2147483647i, -14141i, -70145i)), Struct_1(28584i, vec4<bool>(false, false, true, true), vec4<u32>(0u, 37968u, 4294967295u, 13505u), vec4<i32>(i32(-2147483648), 4545i, -10549i, -1i)), Struct_1(-1i, vec4<bool>(false, false, true, false), vec4<u32>(36099u, 4294967295u, 23864u, 13615u), vec4<i32>(2147483647i, 36510i, -58775i, i32(-2147483648))), Struct_1(0i, vec4<bool>(false, false, true, false), vec4<u32>(0u, 1u, 1u, 44578u), vec4<i32>(i32(-2147483648), i32(-2147483648), 28046i, -1i)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.d, -899f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1320f, -1668f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 1581f) * vec2<f32>(global0[_wgslsmith_index_u32(arg_1.b.a.b.c.x, 15u)], global0[_wgslsmith_index_u32(arg_1.b.a.a.c.x, 15u)]))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, -445f) + vec2<f32>(-1893f, arg_0.e))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2268f), -215f)), select(!arg_0.b.a.a.b.ww, select(arg_0.b.a.a.b.xx, arg_1.b.a.a.b.wy, vec2<bool>(any(arg_1.b.a.a.b), arg_1.e > 416f)), select(arg_1.c, arg_1.c, !arg_0.c && true))));
    var var_1 = ~_wgslsmith_mod_vec3_u32(~u_input.a.xwz, ~arg_1.b.a.b.c.zzw);
    var var_2 = _wgslsmith_sub_vec4_i32(-(~(-(arg_0.b.a.a.d << (vec4<u32>(arg_1.b.a.b.c.x, arg_1.b.a.a.c.x, u_input.a.x, 46295u) % vec4<u32>(32u))))), -vec4<i32>(global3[_wgslsmith_index_u32(min(27358u, ~arg_0.b.a.a.c.x), 5u)], ~(~0i), -arg_0.a.x, _wgslsmith_dot_vec2_i32(arg_1.b.a.a.d.yy, arg_1.b.a.b.d.xx)));
    let var_3 = Struct_3(Struct_2(Struct_1(select(1i, -arg_1.a.x, arg_2.x), !vec4<bool>(arg_2.x, arg_0.c, arg_1.c, false), _wgslsmith_mult_vec4_u32(~arg_0.b.a.b.c, firstTrailingBit(vec4<u32>(arg_0.b.a.a.c.x, arg_1.b.a.a.c.x, 16015u, 90861u))), ~vec4<i32>(arg_0.a.x, var_2.x, 27584i, -61741i)), arg_0.b.a.b, all(select(select(vec4<bool>(arg_1.b.a.b.b.x, arg_0.b.a.c, true, arg_2.x), vec4<bool>(false, arg_0.c, false, false), arg_1.b.a.a.b), vec4<bool>(arg_0.b.a.b.b.x, arg_2.x, false, false), arg_1.b.a.b.b))));
    var var_4 = _wgslsmith_mod_u32(10950u, global1[_wgslsmith_index_u32(0u, 4u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1590f, global0[_wgslsmith_index_u32(6440u, 15u)]))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1231f, 621f)))) - -466f));
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    global4 = array<Struct_1, 4>();
    global3 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51738u, 4u)], 15u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 15u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec3<i32>(-12682i, global3[_wgslsmith_index_u32(4294967295u, 5u)], 14325i), Struct_3(Struct_2(Struct_1(1i, vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<u32>(1u, 4294967295u, 29737u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59110u, 4u)], 4u)], 4u)]), vec4<i32>(1i, -8856i, 2147483647i, 15859i)), Struct_1(-26494i, vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), vec4<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)], 1i)), true)), false, global0[_wgslsmith_index_u32(4294967295u, 15u)], -382f), Struct_4(vec3<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 5u)], 2147483647i, global3[_wgslsmith_index_u32(1u, 5u)]), Struct_3(Struct_2(global4[_wgslsmith_index_u32(1u, 4u)], Struct_1(-20854i, vec4<bool>(false, true, true, arg_0.x), vec4<u32>(1u, u_input.a.x, 67975u, 1u), vec4<i32>(6956i, -2147483647i, global3[_wgslsmith_index_u32(17765u, 5u)], global3[_wgslsmith_index_u32(24999u, 5u)])), arg_0.x)), arg_0.x, global0[_wgslsmith_index_u32(714u, 15u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 15u)]), vec2<bool>(arg_0.x, arg_0.x))))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2151f * global0[_wgslsmith_index_u32(1u, 15u)]) - _wgslsmith_f_op_f32(sign(-1743f)))))) - _wgslsmith_f_op_f32(ceil(-383f)));
    var var_2 = Struct_2(global4[_wgslsmith_index_u32(abs(u_input.a.x), 4u)], global4[_wgslsmith_index_u32(~countOneBits(~(~11947u)), 4u)], arg_0.x);
    return select(select(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_2.b.d.x, -2147483647i, global3[_wgslsmith_index_u32(var_2.b.c.x, 5u)], global3[_wgslsmith_index_u32(52006u, 5u)])), vec4<i32>(abs(-2147483647i), max(2147483647i, var_2.b.a), -var_2.b.a, var_2.a.a), firstLeadingBit(var_2.a.d) >> (vec4<u32>(u_input.a.x, var_2.a.c.x, 15957u, var_2.b.c.x) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(var_2.a.a, var_2.a.a, global3[_wgslsmith_index_u32(4294967295u, 5u)], var_2.b.a)), var_2.a.b.x), vec4<i32>(40008i, 25737i, 0i, ~(-8085i)), select(select(vec4<bool>(true, var_2.a.c.x >= var_2.b.c.x, true || arg_0.x, false), select(vec4<bool>(true, var_2.c, false, false), select(vec4<bool>(false, true, false, var_2.b.b.x), var_2.b.b, var_2.a.b), vec4<bool>(true, true, arg_0.x, var_2.a.b.x)), var_2.b.b), select(vec4<bool>(true, true, var_2.a.b.x | arg_0.x, var_2.b.b.x), select(vec4<bool>(true, var_2.b.b.x, true, true), !var_2.b.b, any(var_2.a.b)), !all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), var_2.b.b));
}

fn func_1(arg_0: u32) -> u32 {
    global0 = array<f32, 15>();
    var var_0 = ((_wgslsmith_add_i32(2287i, ~65144i) << (_wgslsmith_div_u32(select(global1[_wgslsmith_index_u32(arg_0, 4u)], 2934u, false), 1u) % 32u)) <= _wgslsmith_add_i32(_wgslsmith_mod_i32(i32(-1i) * -719i, global3[_wgslsmith_index_u32(~1u, 5u)]), 14569i)) | true;
    var var_1 = select(func_2(vec2<bool>(true, true)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, -32891i, -30218i, 32651i) << (~abs(u_input.a) % vec4<u32>(32u)), vec4<i32>(59110i, 2147483647i, -28146i, func_2(vec2<bool>(true, true)).x), select(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55826u, 4u)], 4u)], 4u)], 4u)], 5u)], global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -1i), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(arg_0, 5u)], global3[_wgslsmith_index_u32(44808u, 5u)], global3[_wgslsmith_index_u32(120108u, 5u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(53127i, global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -9013i, 1i), vec4<i32>(-18897i, global3[_wgslsmith_index_u32(arg_0, 5u)], global3[_wgslsmith_index_u32(16344u, 5u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64231u, 4u)], 5u)]))), select(~vec4<i32>(-28833i, 11338i, global3[_wgslsmith_index_u32(4294967295u, 5u)], 1i), vec4<i32>(-14137i, global3[_wgslsmith_index_u32(u_input.a.x, 5u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)], global3[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)))), false);
    global1 = array<u32, 4>();
    var var_2 = vec2<f32>(1154f, 2582f);
    return _wgslsmith_mult_u32(~_wgslsmith_add_u32(u_input.a.x & 1u, _wgslsmith_sub_u32(4294967295u, 1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(1941u, arg_0)), ~global1[_wgslsmith_index_u32(69600u, 4u)] | u_input.a.x)) >> ((~(1u | (arg_0 >> (u_input.a.x % 32u))) ^ 0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = _wgslsmith_sub_u32(func_1(reverseBits(~_wgslsmith_mult_u32(36564u, 1u))), 4294967295u);
    let var_2 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 15u)];
    let var_3 = -241f;
    global1 = array<u32, 4>();
    var var_4 = firstLeadingBit(vec4<u32>(43917u, min(37014u, ~_wgslsmith_clamp_u32(17542u, u_input.a.x, var_1)), ~12638u, _wgslsmith_clamp_u32(firstTrailingBit(~0u), _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.xy), u_input.a.xx & u_input.a.zz), ~1u << (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u))));
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(~firstTrailingBit(u_input.a.x), ~min(u_input.a.x, var_4.x)), abs(var_1 | ~1u)), 15u)];
    var var_6 = Struct_2(Struct_1(~func_2(vec2<bool>(true, true)).x, vec4<bool>(true, true, true, true), vec4<u32>(u_input.a.x, u_input.a.x, 1u, var_1), -countOneBits(~vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(var_1, 5u)], 2147483647i, 8818i))), Struct_1(abs(~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(0u, 5u)], -50578i)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), u_input.a & vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 35513u, 1u), 6089u >> (global1[_wgslsmith_index_u32(4294967295u, 4u)] % 32u), u_input.a.x, min(0u, 1u)), ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(var_1, 5u)], 2147483647i, -43650i, global3[_wgslsmith_index_u32(var_1, 5u)]), vec4<i32>(global3[_wgslsmith_index_u32(var_4.x, 5u)], global3[_wgslsmith_index_u32(var_1, 5u)], -2147483647i, -2877i)), firstLeadingBit(vec4<i32>(3200i, global3[_wgslsmith_index_u32(var_1, 5u)], global3[_wgslsmith_index_u32(34797u, 5u)], 40422i)))), -184f >= global0[_wgslsmith_index_u32(1u, 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(589f, -622f), vec2<f32>(var_3, global0[_wgslsmith_index_u32(35887u, 15u)]))))))), vec2<i32>(global3[_wgslsmith_index_u32(abs(max(_wgslsmith_sub_u32(88486u, 1073u), global1[_wgslsmith_index_u32(~4294967295u, 4u)])), 5u)], global3[_wgslsmith_index_u32(var_4.x, 5u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(631f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 15u)])) + _wgslsmith_f_op_f32(step(var_3, 648f))), -528f, 306f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-418f, global0[_wgslsmith_index_u32(var_1, 15u)], global0[_wgslsmith_index_u32(var_1, 15u)], var_3) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, -1000f, var_3, var_3))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2894f, -718f, var_3, global0[_wgslsmith_index_u32(4294967295u, 15u)]) - vec4<f32>(1002f, 205f, 1250f, global0[_wgslsmith_index_u32(1u, 15u)])))))), ~select(vec3<u32>(_wgslsmith_mult_u32(var_6.b.c.x, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_4.x, 15918u, 11290u), 4u)], _wgslsmith_dot_vec4_u32(var_6.b.c, u_input.a)), ~select(vec3<u32>(0u, var_1, u_input.a.x), var_4.yww, var_6.b.b.x), true), select(~func_2(vec2<bool>(var_6.b.b.x, false)).yxw | abs(vec3<i32>(-7177i, -62571i, -1i)), _wgslsmith_add_vec3_i32(firstTrailingBit(~vec3<i32>(var_6.b.d.x, -2147483647i, var_6.a.d.x)), _wgslsmith_add_vec3_i32(var_6.a.d.zwz, var_6.b.d.xzy)), var_6.a.b.wyy));
}

