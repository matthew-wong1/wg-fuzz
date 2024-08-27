struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(440f, 1014f, 1281f, -1422f, -1049f, -253f, 958f, -1000f, -520f, 351f, -854f, -220f, -1000f, 1736f, -1328f, -109f, -1000f, -366f, 625f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = min(~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(72349u, 12681u), vec2<u32>(u_input.c, 21415u), vec2<bool>(false, false)), vec2<u32>(6132u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.c, u_input.c))) | vec2<u32>(1u, ~countOneBits(u_input.b)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b) | vec2<u32>(7664u, 1u), ~vec2<u32>(81935u, 12312u)) << (abs(~vec2<u32>(12416u, u_input.b)) % vec2<u32>(32u))));
    global0 = array<f32, 19>();
    var var_1 = Struct_2(Struct_1(select(vec2<i32>(0i, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(-22498i, -3703i), vec2<i32>(65896i, 1i)), select(true, false, true)) | vec2<i32>(1i, 1i)), Struct_1(reverseBits(firstLeadingBit(vec2<i32>(1i, 1i)))));
    var_1 = Struct_2(var_1.b, var_1.b);
    global0 = array<f32, 19>();
    return min(-2147483647i, 679i);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_4 {
    global0 = array<f32, 19>();
    var var_0 = Struct_4(Struct_2(Struct_1(vec2<i32>(select(-1i, 2147483647i, false), func_3())), Struct_1(vec2<i32>(-1i) * -vec2<i32>(1i, -1477i))), Struct_1(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 20774i, 2147483647i), vec4<i32>(0i, 2147483647i, -29128i, 19429i)), abs(26792i))), _wgslsmith_clamp_vec2_u32(select(max(arg_1, vec2<u32>(arg_1.x, u_input.b)), arg_0 >> (vec2<u32>(63709u, 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, false)) & abs(vec2<u32>(u_input.b, 59083u)), _wgslsmith_div_vec2_u32((vec2<u32>(arg_0.x, u_input.c) ^ vec2<u32>(0u, u_input.a)) & max(arg_0, vec2<u32>(4294967295u, 0u)), arg_1), firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(arg_0.x, 29746u), arg_1.x))), Struct_3(~_wgslsmith_dot_vec2_u32(~arg_0, vec2<u32>(u_input.b, arg_0.x)), !all(vec2<bool>(true, true))));
    let var_1 = true;
    let var_2 = Struct_5(Struct_4(Struct_2(var_0.b, var_0.b), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(55799i, -73658i) & var_0.b.a, vec2<i32>(var_0.a.b.a.x, var_0.a.a.a.x))), var_0.c, Struct_3(_wgslsmith_mult_u32(1u, arg_0.x << (var_0.d.a % 32u)), !any(vec4<bool>(true, var_1, false, false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, global0[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1, arg_1), 19u)]), global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(47532u, 1u), arg_0.x), 19u)])), arg_0.x ^ ~((0u >> (arg_0.x % 32u)) | _wgslsmith_mod_u32(4294967295u, arg_0.x)));
    var_0 = var_2.a;
    return Struct_4(var_2.a.a, Struct_1(vec2<i32>(_wgslsmith_sub_i32(0i, var_2.a.a.a.a.x), firstTrailingBit(var_2.a.b.a.x ^ 0i))), vec2<u32>(4294967295u, 45236u), var_2.a.d);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    return Struct_3(~arg_2.a, !any(!select(vec3<bool>(arg_0.d.b, true, true), vec3<bool>(arg_1.a.d.b, true, true), false)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> Struct_3 {
    return arg_1;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = 4294967295u;
    var_0 = ~(~31515u);
    var var_1 = func_5(func_4(func_2(vec2<u32>(arg_0.x & 65734u, 56628u), ~countOneBits(vec2<u32>(21720u, 4294967295u))), Struct_5(func_2(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 19u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 19u)]), _wgslsmith_f_op_f32(373f + global0[_wgslsmith_index_u32(u_input.b, 19u)])), ~arg_0.x), func_2(~arg_0.ww, vec2<u32>(1u, 1u)).d, abs(_wgslsmith_mult_u32(~arg_0.x, 45681u))), func_4(func_2(arg_0.xx & ~arg_0.zz, reverseBits(~vec2<u32>(4294967295u, arg_0.x))), Struct_5(Struct_4(Struct_2(Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(46133i, -20076i))), Struct_1(vec2<i32>(2147483647i, 19089i)), vec2<u32>(0u, 4975u), Struct_3(arg_0.x, true)), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 19u)] + global0[_wgslsmith_index_u32(u_input.b, 19u)]), -1000f, -355f, _wgslsmith_f_op_f32(max(1475f, 1030f))), ~u_input.c), Struct_3(~func_4(Struct_4(Struct_2(Struct_1(vec2<i32>(-27531i, -2147483647i)), Struct_1(vec2<i32>(-2147483647i, 0i))), Struct_1(vec2<i32>(-43289i, -27748i)), arg_0.wx, Struct_3(4294967295u, false)), Struct_5(Struct_4(Struct_2(Struct_1(vec2<i32>(1i, 2061i)), Struct_1(vec2<i32>(-1i, -1i))), Struct_1(vec2<i32>(2147483647i, -1i)), arg_0.yw, Struct_3(arg_0.x, false)), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(3258u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], 1513f), arg_0.x), Struct_3(arg_0.x, false), 18870u).a, true), _wgslsmith_sub_u32(arg_0.x, _wgslsmith_div_u32(u_input.c, arg_0.x) >> (1u % 32u))), func_2(~arg_0.zy, ~(~(~arg_0.xw))).d.b, ~24223u);
    let var_2 = Struct_4(func_2(vec2<u32>(u_input.a, u_input.c), arg_0.yz).a, func_2(func_2(abs(vec2<u32>(u_input.a, var_1.a)), arg_0.xw).c, arg_0.yy).b, vec2<u32>(_wgslsmith_mult_u32(abs(arg_0.x), ~(~1u)), ~(~0u | _wgslsmith_dot_vec2_u32(vec2<u32>(68951u, var_1.a), arg_0.zz))), func_5(func_5(Struct_3(1u, true), Struct_3(26735u, true), func_3() > -1i, arg_0.x >> (min(var_1.a, 1u) % 32u)), func_2(arg_0.xz, arg_0.zz).d, var_1.b, _wgslsmith_add_u32(abs(var_1.a), 122274u)));
    var_1 = var_2.d;
    return Struct_2(Struct_1(var_2.a.b.a), var_2.b);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = ~(arg_2.a.a.a.x << (_wgslsmith_mult_u32(arg_2.d.a, _wgslsmith_sub_u32(~48842u, 1u)) % 32u));
    let var_1 = 4294967295u;
    var var_2 = min(arg_2.c, arg_2.c) & arg_2.c;
    var_0 = firstTrailingBit(_wgslsmith_mod_i32(func_1(~(vec4<u32>(1u, 4294967295u, 24267u, var_1) >> (vec4<u32>(38237u, arg_2.c.x, var_2.x, var_2.x) % vec4<u32>(32u)))).b.a.x, 2147483647i & firstTrailingBit(-9455i)));
    let var_3 = false;
    return vec4<u32>(0u, ~select(u_input.c ^ 4294967295u, select(_wgslsmith_mult_u32(var_2.x, 36786u), u_input.c, var_3 && true), true), _wgslsmith_mod_u32(~var_2.x, 6451u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(max(58493u, var_2.x), 4294967295u), arg_2.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    let var_0 = select(func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1376f, -1606f) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], -2056f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 995f, global0[_wgslsmith_index_u32(u_input.a, 19u)])), Struct_4(func_1(vec4<u32>(45876u, 14559u, u_input.b, u_input.b)), func_1(vec4<u32>(0u, 44982u, u_input.a, u_input.b)).b, _wgslsmith_mod_vec2_u32(vec2<u32>(20247u, 53886u), vec2<u32>(u_input.c, 4294967295u)), func_5(Struct_3(u_input.a, true), Struct_3(u_input.c, false), true, u_input.a)), vec2<f32>(1f, 1f)) ^ ~(~(vec4<u32>(42470u, u_input.b, 16911u, 4294967295u) << (vec4<u32>(741u, 1u, 4294967295u, 32528u) % vec4<u32>(32u)))), ~(~vec4<u32>(15941u, u_input.a, u_input.a, ~30016u)), !any(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_mult_vec2_i32(-vec2<i32>(59982i, 0i), vec2<i32>(-5015i, -1i))), Struct_1(~vec2<i32>(1i, ~(-51528i))));
    var_1 = func_2(_wgslsmith_mult_vec2_u32(var_0.ww, vec2<u32>(firstTrailingBit(min(4294967295u, var_0.x)), firstTrailingBit(0u))), select(var_0.ww, reverseBits(func_2(select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 83283u), true), vec2<u32>(40809u, 5085u)).c), vec2<bool>(!func_4(Struct_4(Struct_2(var_1.b, var_1.b), var_1.a, vec2<u32>(0u, 0u), Struct_3(u_input.c, true)), Struct_5(Struct_4(Struct_2(var_1.a, var_1.b), var_1.a, var_0.yw, Struct_3(var_0.x, true)), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 19u)], -1314f, -448f, 662f), u_input.a), Struct_3(6493u, true), 5064u).b, true))).a;
    var var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(15012u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)])), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 634f, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -197f, global0[_wgslsmith_index_u32(0u, 19u)])), vec3<bool>(true, true, true))) + vec3<f32>(322f, _wgslsmith_f_op_f32(f32(-1f) * -1363f), _wgslsmith_div_f32(-842f, global0[_wgslsmith_index_u32(1u, 19u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-823f, 343f, global0[_wgslsmith_index_u32(0u, 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -738f, global0[_wgslsmith_index_u32(9407u, 19u)])))))), global0[_wgslsmith_index_u32(firstLeadingBit(30098u), 19u)]);
}

