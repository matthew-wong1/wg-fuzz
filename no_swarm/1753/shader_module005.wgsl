struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, vec4<u32>(0u, 44142u, 4294967295u, 1u), true), Struct_1(true, vec4<u32>(49521u, 63858u, 37234u, 0u), true), vec4<f32>(1000f, -777f, 1638f, -332f));

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(false, vec4<u32>(1u, 0u, 1u, 22567u), true), Struct_2(Struct_1(true, vec4<u32>(1u, 12542u, 1u, 0u), false), Struct_1(true, vec4<u32>(1u, 4294967295u, 21778u, 17014u), true), vec4<f32>(255f, 1000f, 1124f, 1268f)), vec2<bool>(true, false), 646f, vec3<bool>(true, false, false)), Struct_3(Struct_1(true, vec4<u32>(1996u, 38690u, 57108u, 26537u), false), Struct_2(Struct_1(true, vec4<u32>(14541u, 11577u, 55978u, 35416u), false), Struct_1(false, vec4<u32>(1u, 1u, 83316u, 0u), true), vec4<f32>(-394f, -359f, 2066f, -488f)), vec2<bool>(true, false), 920f, vec3<bool>(true, false, false)), Struct_3(Struct_1(false, vec4<u32>(56070u, 5940u, 34836u, 92455u), false), Struct_2(Struct_1(false, vec4<u32>(50687u, 0u, 4294967295u, 75207u), true), Struct_1(false, vec4<u32>(1u, 7122u, 50009u, 8236u), false), vec4<f32>(-1042f, -464f, -1137f, 391f)), vec2<bool>(true, true), 781f, vec3<bool>(true, false, false)), Struct_3(Struct_1(false, vec4<u32>(43984u, 14319u, 4294967295u, 1u), false), Struct_2(Struct_1(false, vec4<u32>(68451u, 2749u, 23578u, 0u), true), Struct_1(true, vec4<u32>(1u, 9244u, 4294967295u, 69060u), false), vec4<f32>(1610f, 1326f, 269f, 521f)), vec2<bool>(false, false), 383f, vec3<bool>(false, true, true)), Struct_3(Struct_1(true, vec4<u32>(4294967295u, 0u, 8975u, 4294967295u), true), Struct_2(Struct_1(true, vec4<u32>(27746u, 0u, 58190u, 43571u), false), Struct_1(true, vec4<u32>(66775u, 4294967295u, 25350u, 57964u), true), vec4<f32>(1556f, 392f, 267f, -683f)), vec2<bool>(true, true), 490f, vec3<bool>(false, true, false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(min(-367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d, 1065f, true)))))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = Struct_2(global0.a, global0.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -229f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(arg_0.x, vec4<u32>(global0.b.b.x, u_input.b, u_input.b, 0u), global0.a.c), Struct_2(global0.b, Struct_1(true, vec4<u32>(0u, u_input.d, 0u, global0.b.b.x), global0.b.c), global0.c), arg_0.zz, -347f, vec3<bool>(true, global0.b.c, false)))), global0.c.x), -729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + 2598f))));
    let var_0 = !global0.b.a;
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(select(global0.b.b.x, ~106743u, true), ~firstLeadingBit(57102u)), u_input.b, reverseBits(_wgslsmith_mult_u32(13106u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global0.b.b.x, 1u), global0.a.b))), select(_wgslsmith_dot_vec4_u32(firstLeadingBit(countOneBits(global0.a.b)), global0.b.b & ~global0.a.b), ~max(_wgslsmith_dot_vec2_u32(global0.b.b.zy, vec2<u32>(global0.b.b.x, u_input.b)), _wgslsmith_div_u32(u_input.b, u_input.d)), all(arg_0.yz)));
    let var_2 = ~global0.a.b.yyz;
    var var_3 = -29863i;
    return global0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    let var_0 = ~arg_0.zz;
    let var_1 = arg_2.b;
    global0 = var_1;
    global1 = array<Struct_3, 5>();
    let var_2 = firstTrailingBit(1u);
    return Struct_2(arg_1, Struct_1(!(abs(arg_0.x) < ~2147483647i), _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.b.b.x, var_2, 23672u, global0.a.b.x), vec4<u32>(_wgslsmith_div_u32(global0.a.b.x, arg_1.b.x), ~36863u, var_2, u_input.b << (24327u % 32u))), false | func_2(vec3<bool>(global0.a.c, false, true)).a), var_1.c);
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: bool) -> Struct_4 {
    let var_0 = select(global0.a.b.wyx, vec3<u32>(4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.a.b.yw, vec2<u32>(arg_0.a, 18340u))) << (1u % 32u), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 67943u, arg_0.e.b.a.b.x)), vec3<u32>(global0.b.b.x, global0.b.b.x, global0.a.b.x))), !(true || global0.b.a));
    var var_1 = ~arg_0.b.a.b.yz;
    global1 = array<Struct_3, 5>();
    global0 = func_4(~_wgslsmith_mult_vec4_i32(~(-vec4<i32>(arg_0.c.x, -1i, u_input.e.x, 0i)), -vec4<i32>(1i, arg_0.c.x, arg_0.c.x, arg_0.c.x)), func_2(arg_0.e.e), Struct_3(Struct_1(all(!vec4<bool>(arg_2, false, true, false)), vec4<u32>(global0.a.b.x, ~10406u, ~global0.b.b.x, ~var_0.x), any(!vec4<bool>(global0.b.a, true, arg_0.b.c.x, true))), Struct_2(Struct_1(arg_2, global0.b.b, !arg_0.b.b.b.a), Struct_1(arg_2, vec4<u32>(global0.b.b.x, global0.a.b.x, 4294967295u, arg_0.b.b.b.b.x), all(vec3<bool>(true, global0.b.c, false))), vec4<f32>(-474f, 525f, _wgslsmith_f_op_f32(ceil(arg_0.b.b.c.x)), _wgslsmith_f_op_f32(-global0.c.x))), select(vec2<bool>(!global0.b.a, 0u > var_0.x), vec2<bool>(true, true), any(vec4<bool>(arg_2, arg_1, arg_1, arg_1))), -638f, arg_0.b.e));
    global1 = array<Struct_3, 5>();
    return arg_0;
}

fn func_5(arg_0: Struct_4) -> vec2<f32> {
    let var_0 = Struct_5(arg_0.d, ~1i, arg_0.b.b, 0u);
    let var_1 = Struct_4(~(~firstLeadingBit(var_0.d)) ^ 1u, global1[_wgslsmith_index_u32(arg_0.e.b.a.b.x, 5u)], reverseBits(-vec3<i32>(~arg_0.c.x, var_0.b >> (var_0.c.a.b.x % 32u), -50592i)), reverseBits(vec3<u32>(u_input.b, select(14827u, u_input.b, global0.a.c), firstTrailingBit(38120u)) | vec3<u32>(~var_0.d, 43917u, min(global0.b.b.x, 27740u))), Struct_3(global0.a, arg_0.e.b, func_1(Struct_4(firstLeadingBit(var_0.c.b.b.x), arg_0.e, _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b, u_input.a.x, 42267i), vec3<i32>(52576i, u_input.e.x, -64635i)), var_0.c.a.b.zyy, Struct_3(Struct_1(var_0.c.a.c, arg_0.b.b.b.b, true), arg_0.b.b, arg_0.e.c, var_0.c.c.x, arg_0.b.e)), any(vec3<bool>(true, global0.b.a, var_0.c.a.c)), false).e.e.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1566f, arg_0.b.d) + -248f)), !arg_0.e.e));
    let var_2 = vec2<i32>(reverseBits(9797i), ~(~(-2147483647i)));
    global1 = array<Struct_3, 5>();
    global1 = array<Struct_3, 5>();
    return _wgslsmith_f_op_vec2_f32(-func_4(min(u_input.a, vec4<i32>(var_0.b, ~var_0.b, u_input.a.x, 18389i | u_input.a.x)), global0.b, Struct_3(Struct_1(!var_1.b.b.a.c, global0.b.b, arg_0.b.b.a.c), func_1(Struct_4(global0.a.b.x, Struct_3(arg_0.b.a, var_0.c, arg_0.b.c, var_0.c.c.x, var_1.b.e), u_input.a.yxx, vec3<u32>(47388u, 0u, var_0.d), global1[_wgslsmith_index_u32(2979u, 5u)]), var_0.c.b.c || global0.b.a, true).e.b, var_1.b.e.xx, -811f, arg_0.e.e)).c.wz);
}

fn func_6(arg_0: vec2<f32>) -> Struct_3 {
    global1 = array<Struct_3, 5>();
    global1 = array<Struct_3, 5>();
    let var_0 = Struct_3(func_2(!vec3<bool>(true, true, !global0.b.c)), func_4(reverseBits(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.e), -u_input.c, i32(-1i) * -19346i)), global0.a, func_1(func_1(func_1(Struct_4(30759u, Struct_3(Struct_1(global0.b.c, vec4<u32>(u_input.d, u_input.b, 0u, global0.a.b.x), global0.b.c), Struct_2(global0.b, Struct_1(global0.a.a, vec4<u32>(79356u, 0u, 79528u, u_input.b), global0.a.a), vec4<f32>(414f, arg_0.x, arg_0.x, global0.c.x)), vec2<bool>(false, false), arg_0.x, vec3<bool>(global0.a.c, global0.b.c, global0.a.a)), u_input.e.zyy, vec3<u32>(0u, u_input.b, 1u), Struct_3(global0.a, Struct_2(global0.b, global0.a, global0.c), vec2<bool>(true, global0.b.c), 674f, vec3<bool>(false, global0.a.c, false))), false, false), !global0.b.a, global0.a.a), all(vec2<bool>(global0.b.a, false)), _wgslsmith_f_op_f32(1527f + -1246f) >= _wgslsmith_f_op_f32(floor(702f))).b), !(!vec2<bool>(global0.b.a, !global0.b.c)), 438f, select(!vec3<bool>(any(vec2<bool>(global0.b.c, false)), false, u_input.d != 4294967295u), vec3<bool>((u_input.e.x > u_input.e.x) || true, all(vec2<bool>(true, true)), true), vec3<bool>(18516i >= reverseBits(u_input.a.x), all(vec4<bool>(global0.b.a, false, true, global0.a.c)) & true, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(f32(-1f) * -359f), var_0.e.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -685f) - _wgslsmith_f_op_f32(-372f + arg_0.x))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_3(func_1(Struct_4(0u, Struct_3(var_0.a, Struct_2(Struct_1(true, vec4<u32>(u_input.d, var_0.a.b.x, 16768u, global0.a.b.x), false), Struct_1(false, global0.b.b, global0.b.c), var_0.b.c), vec2<bool>(var_0.a.a, global0.a.a), -605f, var_0.e), vec3<i32>(u_input.c, u_input.c, u_input.c), var_0.b.a.b.yxz, var_0), global0.b.a, false).b)))));
    let var_2 = ~_wgslsmith_mult_i32(u_input.a.x, -49231i << (reverseBits(_wgslsmith_mult_u32(u_input.b, 31669u)) % 32u));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-966f)) * _wgslsmith_f_op_f32(abs(arg_0.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(275f))), vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(func_2(var_0.e).b, select(vec4<u32>(5734u, 1u, u_input.d, global0.b.b.x), global0.b.b, vec4<bool>(global0.a.c, false, true, false))), global0.b.b.x, 27646u), true), Struct_2(Struct_1(true, _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), vec4<u32>(4294967295u, var_0.b.b.b.x, u_input.d, 0u)), var_0.a.c), Struct_1(true, ~vec4<u32>(var_0.a.b.x, 64052u, global0.a.b.x, 31884u), true), var_0.b.c), var_0.c, global0.c.x, vec3<bool>(!global0.b.c, true, var_0.c.x));
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_3.b.b.xz, ~vec2<u32>(4294967295u, 11956u) << (vec2<u32>(arg_3.b.b.x, u_input.d) % vec2<u32>(32u))), max(_wgslsmith_sub_u32(abs(7660u), arg_0.b.x), _wgslsmith_sub_u32(firstLeadingBit(global0.a.b.x), 4294967295u))), _wgslsmith_div_vec2_u32(arg_0.b.yw, abs(arg_2.d.xz)));
    let var_1 = select(select(vec4<bool>(true, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(448u, 5u)])) < arg_2.b.b.c.x, all(!vec4<bool>(arg_3.a.a, true, arg_3.a.a, global0.b.a)), global0.b.c), select(vec4<bool>(arg_0.c, func_1(Struct_4(9196u, arg_2.b, vec3<i32>(arg_2.c.x, arg_2.c.x, -25339i), arg_2.e.b.b.b.zzy, arg_2.e), arg_0.c, arg_3.a.a).b.e.x, true, false), vec4<bool>(arg_2.e.c.x, !arg_3.b.c, any(arg_2.b.c), all(vec4<bool>(false, arg_0.a, true, global0.a.c))), true), vec4<bool>(arg_0.a, global0.a.c, any(!vec4<bool>(arg_0.a, arg_0.a, global0.a.c, false)), func_2(select(arg_2.b.e, vec3<bool>(arg_3.b.c, false, false), arg_0.c)).a)), select(select(select(vec4<bool>(true, false, arg_3.a.c, arg_3.a.a), !vec4<bool>(false, global0.a.c, global0.a.c, arg_3.b.c), !vec4<bool>(arg_3.b.c, false, true, arg_3.b.c)), select(vec4<bool>(arg_2.b.b.b.a, arg_2.e.a.a, arg_2.b.a.a, arg_0.a), vec4<bool>(arg_0.a, false, global0.a.c, arg_3.a.a), global0.a.a), arg_2.e.e.x), select(!vec4<bool>(true, false, global0.a.a, true), !(!vec4<bool>(false, arg_3.a.c, arg_0.a, false)), !(!vec4<bool>(arg_3.a.a, arg_0.a, false, true))), _wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(arg_2.e.b.c.x + 1385f), func_2(arg_2.e.e).c)) >= arg_2.b.d), arg_2.b.a.c);
    var_0 = _wgslsmith_div_u32(~(~arg_0.b.x), func_1(arg_2, !var_1.x, arg_0.c).e.a.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.x, -562f, arg_3.c.x, 585f))) * global0.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1550f, -1052f, arg_3.c.x, global0.c.x)), vec4<f32>(global0.c.x, 657f, arg_3.c.x, arg_3.c.x)) * vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), -1000f, _wgslsmith_f_op_f32(arg_2.b.d + arg_2.b.d), 805f))) * vec4<f32>(_wgslsmith_f_op_f32(-func_1(Struct_4(arg_0.b.x, global1[_wgslsmith_index_u32(13576u, 5u)], arg_2.c, vec3<u32>(arg_3.a.b.x, u_input.d, arg_3.b.b.x), Struct_3(Struct_1(arg_2.e.c.x, vec4<u32>(80977u, arg_0.b.x, global0.b.b.x, 0u), false), arg_2.b.b, vec2<bool>(arg_0.a, var_1.x), 1325f, var_1.wyx)), true, global0.c.x == 556f).e.d), arg_2.e.d, -750f, arg_3.c.x));
    var var_3 = arg_2;
    return func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.b.d, _wgslsmith_f_op_f32(f32(-1f) * -747f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(293f, -1395f), vec2<f32>(983f, global0.c.x)), global0.c.xx, vec2<bool>(var_1.x, false))), !arg_0.a)) - vec2<f32>(_wgslsmith_f_op_f32(-1454f + _wgslsmith_div_f32(106f, var_2.x)), arg_3.c.x))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(global0.b, u_input.d, Struct_4(1u, func_6(_wgslsmith_f_op_vec2_f32(func_5(func_1(Struct_4(global0.b.b.x, Struct_3(global0.a, Struct_2(global0.b, Struct_1(global0.a.a, vec4<u32>(global0.b.b.x, global0.a.b.x, 67195u, u_input.d), global0.a.a), global0.c), vec2<bool>(true, global0.b.a), global0.c.x, vec3<bool>(global0.a.a, false, true)), vec3<i32>(u_input.e.x, u_input.c, u_input.e.x), vec3<u32>(23303u, 1u, u_input.b), global1[_wgslsmith_index_u32(0u, 5u)]), false, global0.b.c)))), u_input.a.xxw, global0.a.b.wwy, Struct_3(global0.b, Struct_2(global0.a, Struct_1(global0.a.c, global0.b.b, global0.b.c), _wgslsmith_f_op_vec4_f32(global0.c + global0.c)), func_6(_wgslsmith_f_op_vec2_f32(global0.c.xw + vec2<f32>(global0.c.x, global0.c.x))).e.yz, global0.c.x, !(!vec3<bool>(global0.a.a, true, false)))), Struct_2(func_1(Struct_4(36254u, Struct_3(global0.a, Struct_2(global0.b, Struct_1(global0.b.c, vec4<u32>(42801u, u_input.b, 4294967295u, 1u), global0.a.a), vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 552f)), vec2<bool>(true, false), global0.c.x, vec3<bool>(global0.a.c, true, global0.a.c)), vec3<i32>(u_input.a.x, -63756i, u_input.a.x), ~global0.b.b.wzy, Struct_3(Struct_1(true, global0.b.b, true), Struct_2(Struct_1(false, vec4<u32>(4294967295u, u_input.d, 0u, u_input.b), global0.b.a), Struct_1(false, vec4<u32>(38250u, u_input.b, 13260u, 9969u), true), vec4<f32>(577f, global0.c.x, global0.c.x, global0.c.x)), vec2<bool>(true, true), global0.c.x, vec3<bool>(global0.a.a, global0.b.c, global0.a.a))), any(select(vec4<bool>(global0.b.c, false, global0.a.c, global0.b.c), vec4<bool>(global0.b.a, global0.b.c, global0.b.c, global0.b.a), global0.b.c)), true).e.a, Struct_1(true, vec4<u32>(global0.b.b.x << (1u % 32u), global0.a.b.x, 1u, _wgslsmith_mod_u32(global0.a.b.x, u_input.b)), any(select(vec2<bool>(global0.b.a, true), vec2<bool>(true, true), global0.b.a))), vec4<f32>(-342f, _wgslsmith_f_op_f32(f32(-1f) * -1140f), global0.c.x, global0.c.x)));
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), global0.b.c)), -130f, -600f, 1024f)), func_7(global0.b, 4294967295u, Struct_4(u_input.d, global1[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_mod_vec3_i32(vec3<i32>(-20036i, 1i, u_input.a.x), vec3<i32>(22217i, u_input.e.x, -20326i) | vec3<i32>(-4750i, 1i, -16762i)), reverseBits(vec3<u32>(u_input.b, 4294967295u, u_input.d)), global1[_wgslsmith_index_u32(max(global0.a.b.x, u_input.b << (4294967295u % 32u)), 5u)]), Struct_2(Struct_1(true, global0.b.b, true), func_2(vec3<bool>(true, global0.a.a, true)), func_1(func_1(Struct_4(17777u, global1[_wgslsmith_index_u32(u_input.b, 5u)], vec3<i32>(41026i, 12733i, 15467i), vec3<u32>(global0.a.b.x, global0.a.b.x, 4294967295u), global1[_wgslsmith_index_u32(u_input.d, 5u)]), false, false), select(global0.b.c, false, true), true).b.b.c)).c);
    let var_1 = global1[_wgslsmith_index_u32(~u_input.d, 5u)];
    let var_2 = !var_1.e;
    var var_3 = ~_wgslsmith_sub_i32(func_1(Struct_4(var_1.b.a.b.x, global1[_wgslsmith_index_u32(global0.b.b.x, 5u)], u_input.e.xzx, vec3<u32>(global0.b.b.x, 0u, u_input.b), Struct_3(var_1.b.a, Struct_2(global0.a, var_1.b.b, global0.c), var_1.e.xx, 1566f, var_2)), select(var_2.x, var_2.x, false), all(var_1.e)).c.x >> (4294967295u % 32u), _wgslsmith_clamp_i32(max(-2147483647i, u_input.a.x), u_input.e.x, -1i));
    var var_4 = ~u_input.a.x;
    var var_5 = vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(func_1(func_1(Struct_4(0u, Struct_3(var_1.a, Struct_2(Struct_1(false, var_1.b.b.b, global0.a.c), Struct_1(var_1.e.x, var_1.b.b.b, var_1.c.x), vec4<f32>(var_1.d, global0.c.x, global0.c.x, 300f)), var_1.e.yx, var_1.b.c.x, vec3<bool>(true, false, true)), vec3<i32>(u_input.e.x, -2147483647i, -2147483647i), vec3<u32>(42837u, global0.b.b.x, 1u), global1[_wgslsmith_index_u32(var_1.b.a.b.x, 5u)]), global0.a.c, false), !global0.a.a, true).c.yy, firstTrailingBit(u_input.e.yy)), vec2<i32>(-1i, _wgslsmith_sub_i32(u_input.e.x, _wgslsmith_sub_i32(u_input.c, -5970i)))), i32(-1i) * -75149i, _wgslsmith_clamp_i32(2147483647i >> (firstTrailingBit(func_6(var_1.b.c.yw).a.b.x) % 32u), func_1(func_1(func_1(Struct_4(0u, Struct_3(var_1.a, var_1.b, vec2<bool>(false, var_1.e.x), global0.c.x, vec3<bool>(var_2.x, global0.a.a, true)), u_input.e.wyw, vec3<u32>(0u, 25917u, var_1.a.b.x), global1[_wgslsmith_index_u32(var_1.a.b.x, 5u)]), global0.a.a, global0.a.a), true, true), global0.b.a, !(!var_1.c.x)).c.x, u_input.a.x));
    var_3 = _wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_5.x, 60145i, 0i, u_input.e.x), vec4<i32>(u_input.e.x, 0i, var_5.x, 2147483647i)), (u_input.e & vec4<i32>(1i, -2147483647i, var_5.x, u_input.a.x)) & _wgslsmith_mod_vec4_i32(vec4<i32>(-39467i, 1i, u_input.c, 1i), vec4<i32>(u_input.e.x, var_5.x, -15056i, var_5.x)))), min(u_input.a.x, _wgslsmith_mult_i32(-997i, u_input.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_i32(-48987i, abs(u_input.a.x & u_input.e.x)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, var_5.x), (-1i >> (var_1.a.b.x % 32u)) ^ max(var_5.x, var_5.x))), ~max(_wgslsmith_sub_vec3_u32(func_2(vec3<bool>(global0.a.a, true, var_1.c.x)).b.zzz, var_1.b.a.b.zzw), ~global0.b.b.zxx << (vec3<u32>(var_1.b.a.b.x, global0.b.b.x, u_input.d) % vec3<u32>(32u))), u_input.a.x, _wgslsmith_f_op_f32(-var_0.x));
}

