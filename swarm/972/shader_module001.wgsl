struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(-17989i, 2147483647i, -12950i, i32(-2147483648)), vec3<bool>(false, true, false), Struct_1(false, vec4<i32>(3321i, -18277i, -1i, -22544i), vec4<i32>(2147483647i, -18880i, 0i, -20658i)));

var<private> global1: u32 = 4294967295u;

var<private> global2: vec3<u32> = vec3<u32>(55821u, 66259u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> bool {
    global2 = ~(~vec3<u32>(_wgslsmith_sub_u32(u_input.a, 73659u), global2.x, 1u)) >> (abs(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x >> (global2.x % 32u), global2.x, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(global2.x, 9926u, 1u), ~vec3<u32>(global2.x, 0u, u_input.c)))) % vec3<u32>(32u));
    global2 = reverseBits(select(select(vec3<u32>(u_input.c, global2.x, u_input.a), vec3<u32>(0u, global2.x, u_input.a), global0.c.a) ^ vec3<u32>(u_input.a, 448u, 3054u), vec3<u32>(u_input.c, 60771u, 0u) & _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global2.x, u_input.c), vec3<u32>(59828u, u_input.c, 119198u)), !(!vec3<bool>(global0.b.x, global0.b.x, true))) & firstTrailingBit(~(~vec3<u32>(1u, 4294967295u, 37511u))));
    global1 = max(_wgslsmith_mult_u32(global2.x, abs(1u)) & 1u, u_input.c);
    let var_0 = global0.b;
    var var_1 = any(select(global0.b, vec3<bool>(false, true, true), vec3<bool>(true, !global0.c.a, true))) == var_0.x;
    return var_0.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    return Struct_1(!(!(!arg_0.x)), global0.a ^ global0.c.b, min(~global0.a, reverseBits(vec4<i32>(-global0.a.x, ~u_input.b, global0.c.b.x & -3764i, 49678i))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(select(global0.c.c, ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.d, arg_0.b.x, u_input.d.x, -1i), arg_1.c.c) ^ reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(global0.c.c.x, -7867i, global0.c.b.x, -45561i), vec4<i32>(0i, arg_3.d, 41004i, 0i))), true), global0.b, arg_1.c);
    global1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(select(~vec3<u32>(arg_2.c, u_input.c, 28619u), vec3<u32>(u_input.a, 0u, 16307u), false)), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, arg_3.c, arg_3.c)), ~(~vec3<u32>(41620u, global2.x, 32176u)))), min(3014u, 0u));
    global0 = Struct_4(select(-(-vec4<i32>(u_input.e.x, -2147483647i, arg_3.d, -5568i) | arg_0.b), arg_0.c, vec4<bool>(arg_2.b, false, arg_1.c.a, false)), var_0.b, func_2(var_0.b));
    let var_1 = Struct_2(_wgslsmith_div_f32(-366f, arg_3.a), true, arg_2.c, i32(-1i) * -2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1035f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f - var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(exp2(arg_2.a))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, arg_2.a, -1000f, -475f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, 361f, -882f, arg_2.a) + vec4<f32>(var_1.a, -413f, arg_2.a, 1637f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a, arg_3.a, arg_3.a, -755f), vec4<f32>(1154f, 1148f, 2314f, 333f), false)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(628f, arg_2.a, 1842f, 1373f))))))));
    return Struct_3(global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(450f, arg_2.a, 362f, var_2.x), vec4<f32>(var_1.a, var_2.x, -636f, arg_3.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, var_1.a, 1000f, var_1.a)), var_0.b.x)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -584f)), 1000f, var_2.x)), var_1, ~firstLeadingBit(firstLeadingBit(reverseBits(vec3<i32>(10705i, var_0.a.x, var_1.d)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a + 2101f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-279f * arg_2.a)))), arg_3.b, 4294967295u, _wgslsmith_mod_i32(1i & (var_0.a.x | -16536i), arg_2.d)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_4 {
    var var_0 = func_3(func_2(vec3<bool>(false, global0.b.x, (arg_0.c.c != u_input.a) || true)), Struct_4(vec4<i32>(abs(-58686i), _wgslsmith_sub_i32(-3258i, 1i), 23363i, arg_2.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(62050i, -13401i, -1i, u_input.b), arg_2.c.b)), arg_2.b, Struct_1(!arg_3.c.b, _wgslsmith_sub_vec4_i32(global0.c.c, vec4<i32>(7116i, u_input.d.x, 0i, arg_0.e.d)), ~countOneBits(global0.c.b))), Struct_2(228f, !all(vec3<bool>(true, true, false)), _wgslsmith_add_u32(countOneBits(57921u), arg_0.e.c), global0.a.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-185f - -375f))) + 1128f), arg_3.e.b, max(func_3(global0.c, arg_2, Struct_2(arg_3.c.a, false, arg_3.c.c, u_input.e.x), arg_0.e).e.c, min(4294967295u, ~0u)), 0i)).a.b.wx;
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3.c.d << (~(0u & global2.x) % 32u), 1i >> (u_input.a % 32u)), func_2(vec3<bool>(arg_3.c.b, false, arg_3.a.a)).b.zx, arg_2.c.b.ww);
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(~(-1i), -var_0.x), -firstTrailingBit(firstTrailingBit(-21073i ^ var_0.x)));
    var_0 = vec2<i32>(-1i) * -countOneBits(~_wgslsmith_div_vec2_i32(global0.c.b.xz, arg_0.d.xz));
    let var_2 = Struct_3(Struct_1(!(select(false, arg_2.c.a, arg_0.a.a) | all(arg_2.b)), countOneBits(~firstTrailingBit(vec4<i32>(global0.a.x, -2147483647i, 2147483647i, arg_3.a.c.x))), select(select(arg_0.a.b | vec4<i32>(global0.a.x, arg_3.e.d, var_0.x, arg_3.d.x), vec4<i32>(-30092i, arg_0.c.d, 3416i, arg_0.d.x), vec4<bool>(true, true, true, arg_2.b.x)), arg_3.a.c, vec4<bool>(true, all(global0.b.yz), arg_3.c.b, arg_0.e.b))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1428f) - 540f)), arg_3.c.a, arg_0.e.a), func_3(Struct_1(!arg_0.e.b, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 15539i, arg_2.c.b.x, 0i), arg_0.a.b, vec4<i32>(arg_3.d.x, 1i, 65817i, global0.c.b.x)), arg_3.a.b), vec4<i32>(var_0.x, -40050i, _wgslsmith_clamp_i32(global0.c.b.x, var_1.x, arg_2.a.x), 0i)), Struct_4(vec4<i32>(-2272i, arg_2.c.b.x, _wgslsmith_add_i32(u_input.e.x, 27439i), -10843i >> (u_input.c % 32u)), vec3<bool>(true, true, !arg_3.e.b), func_3(arg_2.c, Struct_4(vec4<i32>(2147483647i, -1i, arg_3.a.c.x, 2147483647i), global0.b, Struct_1(false, arg_3.a.c, vec4<i32>(2147483647i, 1i, 50619i, 8802i))), func_3(arg_0.a, arg_2, arg_3.e, arg_0.c).e, arg_0.c).a), Struct_2(func_3(func_3(Struct_1(global0.c.a, arg_0.a.c, vec4<i32>(var_1.x, -45642i, arg_3.c.d, arg_0.a.b.x)), Struct_4(global0.a, global0.b, Struct_1(arg_2.b.x, vec4<i32>(-1i, var_1.x, -31107i, -1243i), vec4<i32>(arg_3.d.x, 2374i, u_input.d.x, u_input.d.x))), Struct_2(-551f, false, global2.x, 66618i), Struct_2(arg_3.b.x, true, arg_1, 21870i)).a, arg_2, func_3(Struct_1(arg_2.b.x, vec4<i32>(-2147483647i, global0.a.x, -1i, 2147483647i), arg_0.a.b), arg_2, arg_3.c, arg_3.e).e, arg_3.c).e.a, all(arg_2.b.yy), (global2.x ^ 47837u) ^ (arg_3.e.c & arg_0.e.c), -1i), Struct_2(arg_0.c.a, firstTrailingBit(3572u) >= 67667u, ~(~arg_0.c.c), _wgslsmith_clamp_i32(11220i, ~2147483647i, func_3(Struct_1(arg_0.c.b, arg_2.a, arg_3.a.c), arg_2, Struct_2(724f, false, 0u, 0i), Struct_2(-791f, false, 1u, 27082i)).d.x))).c, -vec3<i32>(firstTrailingBit(1i), abs(-1i), _wgslsmith_add_i32(max(65248i, 33533i), -arg_2.c.c.x)), Struct_2(arg_3.e.a, false, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(12255u, arg_0.c.c, global2.x)), select(min(vec3<u32>(135924u, 0u, u_input.c), vec3<u32>(4294967295u, 54835u, 0u)), firstLeadingBit(vec3<u32>(arg_3.c.c, global2.x, 7881u)), any(vec4<bool>(arg_2.b.x, arg_3.a.a, false, false)))), -39627i));
    return Struct_4(~(-reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_0.a.c.x, -2147483647i, arg_3.a.c.x), var_2.a.c))), !select(vec3<bool>(614f >= arg_0.c.a, arg_0.a.a, arg_3.c.b), arg_2.b, arg_0.a.a), func_3(arg_2.c, Struct_4(global0.c.c, vec3<bool>(true, !arg_0.e.b, !arg_0.e.b), func_2(!arg_2.b)), func_3(Struct_1(!var_2.a.a, func_3(Struct_1(arg_3.a.a, global0.a, vec4<i32>(27063i, -2147483647i, var_0.x, var_0.x)), arg_2, arg_0.e, Struct_2(arg_0.e.a, arg_2.c.a, 24594u, u_input.d.x)).a.c, arg_3.a.b), arg_2, arg_3.c, arg_0.c).e, arg_3.e).a);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    global2 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, u_input.c, 57888u, 1u), vec4<u32>(global2.x, global2.x, 1u, arg_1.e.c)), firstLeadingBit(vec4<u32>(global2.x, arg_1.e.c, u_input.a, global2.x))), func_3(arg_0.c, Struct_4(vec4<i32>(u_input.e.x, 19539i, arg_1.d.x, arg_1.e.d), vec3<bool>(arg_1.a.a, arg_0.c.a, true), arg_1.a), func_3(global0.c, Struct_4(vec4<i32>(1i, arg_1.c.d, u_input.b, -24952i), vec3<bool>(arg_0.b.x, true, false), Struct_1(arg_0.b.x, vec4<i32>(arg_1.a.c.x, arg_0.a.x, 39890i, -14282i), global0.a)), arg_1.e, Struct_2(arg_2, false, u_input.a, arg_0.c.c.x)).e, arg_1.e).e.c, 65168u) << ((firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 11317u, 14022u), vec3<u32>(arg_1.c.c, u_input.a, global2.x))) >> (~reverseBits(~vec3<u32>(arg_1.c.c, global2.x, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_0 = Struct_1(!global0.c.a, (vec4<i32>(-1i) * -vec4<i32>(-2147483647i, global0.a.x, global0.c.b.x, arg_0.a.x)) << (firstLeadingBit(~vec4<u32>(35977u, 40481u, arg_1.e.c, 56951u) | vec4<u32>(0u, 20496u, 4294967295u, arg_1.c.c)) % vec4<u32>(32u)), ~vec4<i32>(arg_1.a.b.x, firstTrailingBit(2147483647i), -max(arg_0.a.x, 2147483647i), _wgslsmith_dot_vec3_i32(countOneBits(arg_0.c.c.wyy), -global0.a.ywx)));
    let var_1 = global0.b.yz;
    return func_3(arg_1.a, arg_0, arg_1.c, arg_1.e).a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    global0 = Struct_4(~(~arg_2.b | vec4<i32>(arg_3.a.c.x, max(0i, -1i), ~arg_1.d.x, arg_2.c.x)), !vec3<bool>(true, true | arg_1.a.a, true), arg_1.a);
    global2 = vec3<u32>(arg_1.e.c, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, ~(~arg_0.c), 0u), ~(4294967295u | _wgslsmith_add_u32(global2.x, 25435u)), _wgslsmith_mult_u32(~4294967295u & (global2.x & arg_3.e.c), arg_1.c.c)), _wgslsmith_dot_vec2_u32(global2.xy, global2.yy));
    var var_0 = arg_3.a.b;
    var var_1 = arg_3;
    let var_2 = arg_3.a.c;
    return Struct_2(arg_3.e.a, global0.c.a, ~arg_0.c, ~(firstLeadingBit(arg_1.d.x & var_1.e.d) | ~firstTrailingBit(arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 28676u;
    let var_0 = func_6(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(2897f)), _wgslsmith_f_op_f32(f32(-1f) * -727f))) - _wgslsmith_f_op_f32(-1063f * -590f)), true, ~global2.x, u_input.d.x), Struct_3(Struct_1(func_1(), -global0.a, -vec4<i32>(u_input.b, u_input.b, 2147483647i, -36114i)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(-390f)), _wgslsmith_f_op_f32(1514f - -108f), -740f, _wgslsmith_f_op_f32(f32(-1f) * -1174f)))), Struct_2(1f, true, global2.x, 8161i), select(min(select(vec3<i32>(global0.a.x, global0.a.x, -3029i), vec3<i32>(1i, u_input.d.x, global0.c.c.x), global0.b), vec3<i32>(global0.a.x, -55561i, u_input.b)), u_input.d >> (~vec3<u32>(global2.x, 0u, 0u) % vec3<u32>(32u)), global0.c.a), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f + -801f)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), ~1u, -19882i)), func_5(func_4(func_3(func_2(vec3<bool>(global0.c.a, global0.c.a, true)), Struct_4(vec4<i32>(global0.c.c.x, 41458i, -28953i, -31736i), vec3<bool>(global0.c.a, global0.c.a, false), Struct_1(global0.b.x, vec4<i32>(u_input.d.x, global0.c.b.x, u_input.d.x, -10165i), vec4<i32>(u_input.e.x, global0.c.b.x, -13040i, -8930i))), Struct_2(103f, false, 13247u, u_input.b), Struct_2(-702f, false, global2.x, global0.c.b.x)), u_input.c, Struct_4(global0.c.b & global0.a, select(global0.b, global0.b, true), global0.c), func_3(Struct_1(true, vec4<i32>(u_input.b, u_input.b, u_input.b, -36931i), global0.c.c), Struct_4(vec4<i32>(0i, 32957i, 42939i, u_input.b), vec3<bool>(global0.c.a, global0.c.a, false), global0.c), func_3(global0.c, Struct_4(vec4<i32>(0i, 0i, 0i, u_input.d.x), vec3<bool>(false, true, true), global0.c), Struct_2(-1134f, true, global2.x, 0i), Struct_2(-1302f, false, 4294967295u, -1i)).e, func_3(global0.c, Struct_4(global0.c.b, vec3<bool>(true, true, global0.b.x), global0.c), Struct_2(1000f, true, u_input.c, global0.c.b.x), Struct_2(-537f, false, 0u, global0.a.x)).c)), func_3(func_3(Struct_1(global0.c.a, global0.a, global0.c.b), Struct_4(vec4<i32>(9228i, global0.a.x, global0.c.c.x, global0.c.b.x), vec3<bool>(global0.c.a, global0.b.x, global0.b.x), Struct_1(true, global0.c.b, vec4<i32>(75255i, 27202i, -1i, 0i))), Struct_2(233f, false, global2.x, u_input.d.x), Struct_2(836f, global0.b.x, u_input.a, u_input.b)).a, func_4(Struct_3(Struct_1(true, vec4<i32>(1i, -31020i, u_input.b, u_input.e.x), vec4<i32>(u_input.d.x, -16787i, 13727i, 1i)), vec4<f32>(1210f, -1129f, -569f, 1558f), Struct_2(1000f, true, global2.x, global0.c.b.x), u_input.e, Struct_2(865f, global0.b.x, 0u, global0.a.x)), 86662u, Struct_4(global0.c.c, vec3<bool>(false, true, true), global0.c), func_3(Struct_1(false, vec4<i32>(u_input.d.x, u_input.d.x, global0.c.b.x, 48670i), vec4<i32>(u_input.d.x, global0.a.x, u_input.d.x, global0.c.c.x)), Struct_4(vec4<i32>(31080i, 7883i, global0.a.x, global0.c.c.x), global0.b, global0.c), Struct_2(-1318f, global0.b.x, 89376u, global0.a.x), Struct_2(733f, global0.c.a, 1u, u_input.d.x))), Struct_2(_wgslsmith_f_op_f32(2782f * -395f), true, global2.x ^ u_input.a, reverseBits(u_input.b)), func_3(Struct_1(global0.c.a, vec4<i32>(global0.a.x, u_input.d.x, u_input.b, 0i), vec4<i32>(global0.c.c.x, 1i, u_input.b, 22486i)), Struct_4(global0.c.b, vec3<bool>(global0.c.a, global0.b.x, false), Struct_1(global0.c.a, vec4<i32>(global0.c.c.x, u_input.d.x, global0.a.x, 7622i), vec4<i32>(-2147483647i, 0i, 43375i, 2147483647i))), func_3(global0.c, Struct_4(global0.c.b, vec3<bool>(global0.c.a, true, global0.b.x), Struct_1(false, vec4<i32>(u_input.b, 23328i, global0.c.c.x, -44087i), vec4<i32>(u_input.b, -40393i, -2147483647i, u_input.d.x))), Struct_2(508f, true, 18009u, global0.c.b.x), Struct_2(1344f, true, u_input.c, -19625i)).e, Struct_2(1194f, global0.c.a, global2.x, 0i)).c), _wgslsmith_f_op_f32(ceil(357f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, 770f, 430f, -889f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1033f, 577f, 482f, 548f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-230f, 1095f, 1159f, -199f) + vec4<f32>(1734f, -1000f, 743f, 1000f))))), Struct_3(func_4(func_3(Struct_1(false, vec4<i32>(global0.a.x, 49470i, 1i, global0.c.c.x), global0.c.b), Struct_4(global0.a, global0.b, global0.c), func_3(Struct_1(false, vec4<i32>(u_input.d.x, 16281i, -31499i, u_input.d.x), global0.a), Struct_4(vec4<i32>(u_input.b, -2147483647i, global0.c.b.x, global0.c.c.x), vec3<bool>(true, global0.b.x, global0.c.a), Struct_1(true, global0.a, global0.a)), Struct_2(-1000f, true, global2.x, 33288i), Struct_2(-366f, global0.b.x, 0u, 1i)).e, Struct_2(1860f, false, 34016u, u_input.d.x)), global2.x, func_4(func_3(global0.c, Struct_4(vec4<i32>(0i, global0.c.c.x, -2147483647i, -2147483647i), global0.b, global0.c), Struct_2(697f, global0.c.a, 95947u, u_input.e.x), Struct_2(-120f, global0.b.x, 0u, -1i)), _wgslsmith_clamp_u32(u_input.a, global2.x, 35578u), func_4(Struct_3(Struct_1(global0.b.x, vec4<i32>(u_input.d.x, 45731i, -2147483647i, -1i), vec4<i32>(-2147483647i, u_input.b, global0.c.b.x, 2147483647i)), vec4<f32>(1000f, 682f, 1318f, 333f), Struct_2(-1892f, false, 4294967295u, u_input.e.x), u_input.e, Struct_2(-140f, global0.b.x, global2.x, 1i)), u_input.a, Struct_4(global0.a, vec3<bool>(false, global0.c.a, global0.b.x), global0.c), Struct_3(global0.c, vec4<f32>(-717f, -917f, 1483f, 1000f), Struct_2(1229f, false, 1u, 1i), vec3<i32>(-1i, u_input.d.x, global0.a.x), Struct_2(-659f, global0.b.x, u_input.c, 1i))), func_3(Struct_1(false, global0.a, vec4<i32>(2147483647i, 40863i, 2147483647i, 82244i)), Struct_4(vec4<i32>(10949i, 1i, 0i, u_input.d.x), vec3<bool>(global0.c.a, true, true), Struct_1(true, global0.a, vec4<i32>(u_input.b, global0.a.x, -48568i, 28326i))), Struct_2(1582f, true, 4294967295u, u_input.d.x), Struct_2(193f, global0.b.x, u_input.a, 27503i))), Struct_3(func_2(global0.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-504f, 868f, -1000f, -793f))), Struct_2(-285f, global0.c.a, u_input.a, -34317i), global0.a.xwx, func_3(Struct_1(global0.b.x, global0.a, global0.a), Struct_4(vec4<i32>(2147483647i, -14935i, u_input.d.x, 2147483647i), vec3<bool>(global0.b.x, true, global0.b.x), Struct_1(true, global0.a, global0.c.c)), Struct_2(-139f, false, 0u, global0.c.b.x), Struct_2(350f, true, global2.x, global0.c.c.x)).e)).c, func_3(Struct_1(any(global0.b), global0.a, select(global0.a, vec4<i32>(-34739i, 0i, -18054i, -2147483647i), vec4<bool>(global0.c.a, global0.c.a, global0.c.a, global0.c.a))), func_4(func_3(global0.c, Struct_4(global0.c.c, vec3<bool>(global0.c.a, global0.b.x, true), Struct_1(global0.c.a, global0.c.b, global0.a)), Struct_2(161f, true, u_input.c, 2147483647i), Struct_2(1038f, false, u_input.c, 1i)), _wgslsmith_add_u32(u_input.a, u_input.c), Struct_4(global0.a, vec3<bool>(global0.c.a, global0.c.a, true), Struct_1(global0.c.a, global0.a, vec4<i32>(u_input.b, 2147483647i, 0i, u_input.e.x))), func_3(global0.c, Struct_4(vec4<i32>(-32383i, 2147483647i, 33219i, 0i), global0.b, Struct_1(false, global0.a, global0.c.b)), Struct_2(103f, true, 36259u, u_input.d.x), Struct_2(1000f, global0.b.x, global2.x, u_input.d.x))), func_3(func_4(Struct_3(global0.c, vec4<f32>(527f, 582f, 607f, 248f), Struct_2(-1395f, global0.b.x, 0u, global0.c.b.x), vec3<i32>(global0.c.b.x, -6545i, global0.a.x), Struct_2(-1096f, global0.c.a, global2.x, global0.a.x)), 79265u, Struct_4(global0.c.b, global0.b, global0.c), Struct_3(Struct_1(false, vec4<i32>(u_input.e.x, global0.c.c.x, u_input.b, global0.a.x), vec4<i32>(-9106i, -48017i, global0.c.b.x, global0.a.x)), vec4<f32>(182f, -251f, 281f, 1049f), Struct_2(-2610f, true, global2.x, global0.c.c.x), u_input.d, Struct_2(251f, global0.c.a, 0u, global0.a.x))).c, Struct_4(global0.c.c, global0.b, Struct_1(false, global0.a, vec4<i32>(0i, 25585i, global0.c.c.x, u_input.d.x))), func_3(Struct_1(global0.c.a, vec4<i32>(4946i, -22318i, -21036i, 30310i), global0.c.b), Struct_4(global0.c.b, vec3<bool>(true, global0.b.x, false), Struct_1(global0.c.a, global0.a, vec4<i32>(u_input.b, u_input.e.x, global0.c.c.x, u_input.e.x))), Struct_2(-897f, global0.b.x, 28100u, 1i), Struct_2(-1028f, false, 11968u, global0.c.c.x)).c, Struct_2(710f, false, global2.x, u_input.e.x)).e, func_3(global0.c, func_4(Struct_3(Struct_1(false, vec4<i32>(u_input.b, global0.a.x, 1i, global0.c.c.x), global0.c.b), vec4<f32>(-1109f, 1000f, 1480f, -607f), Struct_2(-2056f, false, 8612u, 7874i), u_input.d, Struct_2(-1000f, global0.b.x, 1u, 1i)), 545u, Struct_4(global0.a, global0.b, Struct_1(false, vec4<i32>(6027i, 29050i, 45860i, u_input.e.x), vec4<i32>(global0.a.x, u_input.b, u_input.b, -35717i))), Struct_3(global0.c, vec4<f32>(1000f, 273f, -1000f, 860f), Struct_2(1000f, global0.b.x, u_input.c, -2147483647i), vec3<i32>(u_input.b, -14465i, 0i), Struct_2(596f, global0.b.x, u_input.a, 496i))), func_3(Struct_1(global0.c.a, vec4<i32>(10316i, -1i, -14603i, u_input.d.x), vec4<i32>(u_input.b, global0.a.x, -2147483647i, u_input.e.x)), Struct_4(global0.a, vec3<bool>(true, global0.c.a, global0.b.x), Struct_1(global0.c.a, vec4<i32>(u_input.e.x, u_input.b, global0.a.x, u_input.d.x), global0.a)), Struct_2(-548f, global0.b.x, 130820u, -26494i), Struct_2(-285f, true, 4294967295u, global0.a.x)).e, func_3(Struct_1(false, global0.a, global0.a), Struct_4(vec4<i32>(-23136i, u_input.e.x, 42139i, global0.a.x), vec3<bool>(global0.b.x, true, global0.b.x), Struct_1(global0.b.x, vec4<i32>(global0.a.x, global0.c.b.x, global0.c.b.x, u_input.d.x), vec4<i32>(6030i, -2147483647i, u_input.e.x, u_input.d.x))), Struct_2(-458f, global0.c.a, global2.x, 18250i), Struct_2(821f, global0.b.x, u_input.c, -6434i)).c).c).b, Struct_2(_wgslsmith_f_op_f32(-189f * _wgslsmith_f_op_f32(select(1256f, 609f, true))), global0.c.a, 2929u, 33055i), vec3<i32>(~max(u_input.e.x, global0.c.c.x), ~(-1i), abs(min(23838i, -30491i))), Struct_2(-697f, !(!global0.c.a), u_input.c | _wgslsmith_dot_vec4_u32(vec4<u32>(33860u, 1u, 7422u, global2.x), vec4<u32>(global2.x, global2.x, global2.x, u_input.c)), countOneBits(~2147483647i))));
    global0 = Struct_4(abs(-select(_wgslsmith_mod_vec4_i32(global0.c.b, global0.c.c), _wgslsmith_mod_vec4_i32(global0.a, global0.c.c), true)), select(global0.b, select(vec3<bool>(global0.c.a, global0.b.x, false), select(global0.b, !vec3<bool>(global0.b.x, global0.b.x, var_0.b), func_4(Struct_3(Struct_1(var_0.b, vec4<i32>(-2904i, -41616i, -16432i, 8969i), vec4<i32>(var_0.d, global0.c.c.x, global0.c.c.x, -2147483647i)), vec4<f32>(var_0.a, 1441f, -1288f, -1350f), Struct_2(136f, false, 4294967295u, 0i), global0.c.b.xzz, var_0), u_input.a, Struct_4(global0.c.b, vec3<bool>(true, global0.c.a, false), global0.c), Struct_3(global0.c, vec4<f32>(var_0.a, 489f, 625f, var_0.a), Struct_2(var_0.a, global0.b.x, var_0.c, 1i), u_input.d, Struct_2(var_0.a, true, 33395u, u_input.b))).b), global0.b), global0.b), global0.c);
    let var_1 = global0.b.x;
    let var_2 = ~max(_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 89547u, 12361u), vec3<u32>(40653u, u_input.a, global2.x)), vec3<u32>(_wgslsmith_mult_u32(0u, 20507u), min(u_input.c, 1u), ~var_0.c), firstTrailingBit(vec3<u32>(16906u, 0u, global2.x) >> (vec3<u32>(0u, 45161u, 1u) % vec3<u32>(32u)))), abs(abs(vec3<u32>(0u, u_input.c, 0u))));
    global1 = ~_wgslsmith_mult_u32(1u | var_2.x, 28410u);
    var var_3 = _wgslsmith_sub_vec4_i32(global0.c.c, vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(var_0.d), 0i) ^ _wgslsmith_sub_i32(var_0.d, 0i << (global2.x % 32u)), min(23777i, select(-u_input.d.x, _wgslsmith_div_i32(0i, 2147483647i), true)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-1i), global0.c.c.x, -1i, u_input.d.x >> (89130u % 32u)), vec4<i32>(global0.c.c.x, global0.c.b.x, var_0.d, u_input.e.x) | vec4<i32>(-1i, 2147483647i, -2083i, u_input.d.x)), -(_wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(global0.c.b.x, global0.c.c.x, -2147483647i, -1i)) ^ ~(-55489i))));
    let var_4 = Struct_3(func_3(Struct_1(global0.b.x, vec4<i32>(global0.a.x, var_3.x, -1i, 1i) & global0.c.c, func_4(func_3(Struct_1(true, global0.c.c, vec4<i32>(u_input.b, -1i, 0i, u_input.d.x)), Struct_4(vec4<i32>(var_0.d, global0.c.c.x, global0.c.c.x, global0.a.x), global0.b, Struct_1(false, global0.c.b, vec4<i32>(241i, var_3.x, u_input.d.x, 14210i))), Struct_2(var_0.a, global0.c.a, var_0.c, u_input.b), Struct_2(-1086f, var_0.b, var_0.c, -1i)), _wgslsmith_sub_u32(global2.x, global2.x), func_4(Struct_3(Struct_1(var_0.b, global0.a, global0.c.c), vec4<f32>(var_0.a, 646f, var_0.a, var_0.a), var_0, var_3.wxx, var_0), var_0.c, Struct_4(vec4<i32>(3752i, -4296i, global0.a.x, var_3.x), global0.b, global0.c), Struct_3(Struct_1(false, global0.c.b, vec4<i32>(var_3.x, 6204i, var_3.x, -8532i)), vec4<f32>(var_0.a, 1781f, 716f, var_0.a), var_0, vec3<i32>(global0.a.x, -18667i, 8924i), Struct_2(var_0.a, var_0.b, 69965u, var_0.d))), Struct_3(Struct_1(global0.c.a, global0.a, global0.a), vec4<f32>(var_0.a, -1000f, var_0.a, 1126f), var_0, vec3<i32>(global0.c.c.x, -2147483647i, 1i), Struct_2(631f, false, 0u, 0i))).a), Struct_4(~vec4<i32>(var_3.x, -2147483647i, var_3.x, var_3.x), global0.b, global0.c), var_0, var_0).a, func_3(Struct_1(false, vec4<i32>(~global0.a.x, -18131i, var_0.d & 19487i, global0.a.x), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2147483647i, 1i, global0.c.b.x)), Struct_4(func_5(Struct_4(global0.c.b, global0.b, Struct_1(var_0.b, vec4<i32>(-1i, -2147483647i, 31977i, -5681i), global0.a)), func_3(Struct_1(global0.c.a, vec4<i32>(var_0.d, -22843i, -17579i, var_3.x), vec4<i32>(global0.a.x, var_3.x, var_3.x, 23569i)), Struct_4(vec4<i32>(global0.c.b.x, -1i, -1i, global0.c.c.x), global0.b, global0.c), Struct_2(var_0.a, true, var_0.c, u_input.e.x), var_0), var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1000f, -817f, var_0.a))).c, global0.b, func_2(!vec3<bool>(false, global0.c.a, true))), func_6(func_3(Struct_1(var_0.b, global0.c.b, global0.c.c), Struct_4(vec4<i32>(52486i, u_input.b, u_input.b, var_3.x), vec3<bool>(var_0.b, global0.c.a, false), global0.c), func_6(Struct_2(var_0.a, global0.b.x, 1u, var_0.d), Struct_3(global0.c, vec4<f32>(-570f, var_0.a, var_0.a, var_0.a), var_0, u_input.d, Struct_2(var_0.a, global0.c.a, 4294967295u, global0.c.c.x)), Struct_1(true, vec4<i32>(0i, global0.c.b.x, var_3.x, u_input.b), vec4<i32>(6182i, global0.c.b.x, global0.a.x, 0i)), Struct_3(Struct_1(false, vec4<i32>(1i, 2147483647i, var_3.x, var_0.d), vec4<i32>(global0.c.c.x, var_3.x, 2147483647i, global0.a.x)), vec4<f32>(var_0.a, 1549f, 2321f, -1383f), Struct_2(117f, false, 10385u, u_input.d.x), var_3.zxx, var_0)), Struct_2(-919f, false, var_0.c, global0.c.b.x)).e, Struct_3(func_2(global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1259f, 1000f, var_0.a)), var_0, u_input.e, func_6(Struct_2(var_0.a, var_0.b, 27807u, var_3.x), Struct_3(Struct_1(global0.b.x, vec4<i32>(-2147483647i, var_3.x, -1i, -2147483647i), vec4<i32>(23344i, 4068i, 23858i, -10013i)), vec4<f32>(-188f, var_0.a, var_0.a, -689f), Struct_2(-305f, true, u_input.c, var_3.x), global0.c.b.yzz, Struct_2(1191f, false, var_2.x, var_0.d)), global0.c, Struct_3(global0.c, vec4<f32>(-385f, var_0.a, -224f, var_0.a), var_0, var_3.xyw, var_0))), global0.c, func_3(global0.c, func_4(Struct_3(Struct_1(false, vec4<i32>(var_3.x, global0.c.b.x, var_0.d, var_0.d), vec4<i32>(2147483647i, 37156i, -1i, global0.a.x)), vec4<f32>(var_0.a, var_0.a, 320f, 157f), Struct_2(var_0.a, true, global2.x, var_3.x), global0.c.c.yxz, Struct_2(1301f, var_0.b, 2863u, var_3.x)), u_input.a, Struct_4(vec4<i32>(global0.a.x, -44821i, var_3.x, u_input.d.x), global0.b, global0.c), Struct_3(Struct_1(global0.b.x, global0.a, vec4<i32>(var_0.d, var_0.d, u_input.b, var_3.x)), vec4<f32>(var_0.a, -1000f, var_0.a, 1411f), Struct_2(var_0.a, var_0.b, 4294967295u, 1i), global0.c.b.xww, Struct_2(var_0.a, var_0.b, 73995u, var_3.x))), var_0, var_0)), var_0).b, Struct_2(_wgslsmith_f_op_f32(378f - _wgslsmith_f_op_f32(select(283f, 1f, true))), (all(vec3<bool>(true, var_0.b, false)) | any(vec3<bool>(global0.c.a, true, false))) & global0.b.x, firstLeadingBit(0u), -2147483647i), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(var_3.xx, vec2<i32>(var_0.d, 10764i)), _wgslsmith_add_i32(global0.c.c.x, var_0.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, 0i, 0i), vec3<i32>(-2147483647i, u_input.b, -1i)), ~u_input.e & global0.c.b.xzx), vec3<i32>(-2147483647i, 14468i, -2147483647i)), func_3(Struct_1(true, vec4<i32>(-2901i, global0.a.x, -2147483647i, global0.a.x) >> (~vec4<u32>(40757u, var_2.x, var_0.c, 26968u) % vec4<u32>(32u)), global0.a), Struct_4(_wgslsmith_div_vec4_i32(global0.a, vec4<i32>(global0.c.c.x, u_input.d.x, var_3.x, var_3.x)), global0.b, global0.c), Struct_2(var_0.a, var_0.b, var_0.c, abs(abs(15099i))), Struct_2(var_0.a, any(global0.b.zy), 0u, func_6(Struct_2(var_0.a, var_0.b, var_0.c, 325i), func_3(Struct_1(false, global0.c.c, vec4<i32>(13359i, 1i, -2147483647i, u_input.d.x)), Struct_4(vec4<i32>(var_0.d, -29284i, global0.c.b.x, -50958i), global0.b, global0.c), Struct_2(var_0.a, var_0.b, global2.x, -10294i), Struct_2(-608f, false, 3638u, var_0.d)), global0.c, func_3(global0.c, Struct_4(vec4<i32>(-1i, 10597i, 0i, global0.c.b.x), vec3<bool>(false, var_0.b, false), global0.c), Struct_2(var_0.a, var_0.b, 17858u, var_3.x), var_0)).d)).c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, min(firstLeadingBit(~vec2<u32>(54841u, 66768u)), min(vec2<u32>(4294967295u, 24713u), var_2.zz)), func_4(func_3(Struct_1(true, global0.a, global0.a), Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(var_4.d.x, var_3.x, u_input.b, var_0.d), global0.a), !vec3<bool>(true, var_0.b, global0.b.x), Struct_1(true, var_4.a.c, vec4<i32>(global0.c.c.x, -1i, -29579i, u_input.e.x))), func_6(func_6(var_4.c, var_4, global0.c, Struct_3(global0.c, vec4<f32>(615f, -231f, -115f, -440f), Struct_2(var_4.b.x, true, u_input.a, var_4.c.d), u_input.d, Struct_2(1022f, global0.b.x, 20363u, u_input.b))), var_4, func_2(global0.b), Struct_3(global0.c, var_4.b, var_0, var_3.xxw, var_4.e)), func_3(func_2(global0.b), Struct_4(vec4<i32>(global0.a.x, u_input.e.x, 10133i, u_input.b), vec3<bool>(var_4.e.b, false, false), Struct_1(var_4.c.b, var_4.a.c, vec4<i32>(global0.a.x, 7878i, 13249i, u_input.d.x))), Struct_2(182f, true, var_4.c.c, -159i), func_3(var_4.a, Struct_4(vec4<i32>(u_input.e.x, var_4.c.d, var_0.d, -2147483647i), global0.b, global0.c), var_4.e, Struct_2(920f, var_4.c.b, var_2.x, -75493i)).e).c), 4294967295u ^ (~var_0.c | ~var_2.x), Struct_4(firstTrailingBit(_wgslsmith_sub_vec4_i32(var_4.a.c, var_4.a.b)), select(vec3<bool>(global0.c.a, false, false), !vec3<bool>(var_0.b, var_4.a.a, true), select(vec3<bool>(var_4.c.b, var_0.b, global0.b.x), global0.b, true)), func_4(func_3(global0.c, Struct_4(global0.c.c, vec3<bool>(false, false, global0.b.x), Struct_1(true, vec4<i32>(var_0.d, -12026i, global0.c.b.x, -1i), var_4.a.c)), var_0, var_0), 4294967295u, func_4(var_4, global2.x, Struct_4(var_4.a.c, vec3<bool>(false, global0.b.x, false), Struct_1(global0.b.x, global0.a, var_4.a.b)), var_4), Struct_3(global0.c, var_4.b, var_4.c, vec3<i32>(global0.a.x, var_4.a.c.x, var_4.c.d), Struct_2(-1000f, false, 27243u, 5614i))).c), var_4).c.b.xwy);
}

