struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-46190i, vec4<u32>(54193u, 37383u, 60724u, 1u), 544f), Struct_1(2460i, vec4<u32>(77238u, 15844u, 44132u, 13427u), -979f), Struct_1(9395i, vec4<u32>(17554u, 0u, 4294967295u, 0u), 591f), Struct_1(9728i, vec4<u32>(105950u, 4294967295u, 42690u, 1u), -243f), Struct_1(56522i, vec4<u32>(28267u, 52765u, 12841u, 72942u), 826f), Struct_1(1i, vec4<u32>(12520u, 24718u, 32510u, 27225u), 315f), Struct_1(-16455i, vec4<u32>(0u, 4294967295u, 14790u, 100765u), -1036f), Struct_1(i32(-2147483648), vec4<u32>(1u, 56842u, 67793u, 4294967295u), -949f), Struct_1(1i, vec4<u32>(35034u, 6496u, 1u, 0u), 604f), Struct_1(1i, vec4<u32>(52798u, 0u, 0u, 71361u), 847f), Struct_1(-74074i, vec4<u32>(1u, 76080u, 4294967295u, 901u), 335f), Struct_1(-49824i, vec4<u32>(4294967295u, 4294967295u, 39549u, 66562u), -1060f), Struct_1(-52277i, vec4<u32>(1u, 4294967295u, 25087u, 31784u), 416f), Struct_1(10i, vec4<u32>(83039u, 43791u, 5602u, 43746u), 1423f), Struct_1(-7489i, vec4<u32>(11905u, 48950u, 0u, 449u), 336f), Struct_1(i32(-2147483648), vec4<u32>(0u, 3443u, 22634u, 0u), 628f), Struct_1(1i, vec4<u32>(4294967295u, 49121u, 60088u, 0u), 2305f), Struct_1(1349i, vec4<u32>(1u, 15467u, 3934u, 29554u), 708f), Struct_1(0i, vec4<u32>(0u, 14786u, 1u, 0u), 1577f), Struct_1(0i, vec4<u32>(0u, 0u, 4294967295u, 4294967295u), -143f), Struct_1(-1i, vec4<u32>(67887u, 0u, 0u, 4294967295u), -450f), Struct_1(0i, vec4<u32>(11023u, 3245u, 20940u, 74863u), -916f), Struct_1(2896i, vec4<u32>(37913u, 4294967295u, 29735u, 51063u), 236f));

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 12793u);

var<private> global3: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 49357u, 4294967295u), vec3<u32>(4294967295u, 38453u, 4294967295u), vec3<u32>(31802u, 16173u, 2152u), vec3<u32>(4294967295u, 4294967295u, 1712u), vec3<u32>(46937u, 33747u, 1u), vec3<u32>(23503u, 4294967295u, 1u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = (0u >= firstTrailingBit(global2.x)) || !(!(!all(vec3<bool>(true, true, false))));
    let var_1 = vec4<u32>(select(u_input.a.x, global2.x, !(any(vec3<bool>(false, false, false)) && true)), ~countOneBits(global0.b.x >> (120630u % 32u)) ^ _wgslsmith_mult_u32(~4294967295u, 1u), 13667u, 14603u);
    let var_2 = _wgslsmith_f_op_f32(816f + _wgslsmith_f_op_f32(-552f - global0.c));
    var_0 = any(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(false, true, true)) || select(false, false, false), !all(vec3<bool>(true, false, false))), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true)));
    var var_3 = select(vec3<bool>(!(all(vec4<bool>(true, false, false, true)) && true), false, true), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true), false);
    return _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(global0.a, -2147483647i, 2147483647i, global0.a)), firstLeadingBit(~vec4<i32>(27781i, global0.a, 1i, global0.a))), vec4<i32>(~(-20159i), i32(-1i) * -2147483647i, ~global0.a, firstLeadingBit(4224i) ^ global0.a)), vec4<i32>(global0.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(12471i, global0.a, global0.a, -1i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -58812i, 2147483647i, -2147483647i), vec4<i32>(global0.a, global0.a, global0.a, -19551i)), _wgslsmith_add_i32(1i, 0i), _wgslsmith_mult_i32(global0.a, global0.a), -8190i)), (-21222i & global0.a) ^ (~global0.a & global0.a), countOneBits(global0.a)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = func_3();
    return arg_1.c;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = 388f;
    let var_1 = var_0;
    let var_2 = Struct_1(global0.a, max(~vec4<u32>(~1u, 11096u << (global2.x % 32u), 11918u << (arg_2.x % 32u), arg_1.x), reverseBits(select(min(vec4<u32>(107037u, 37412u, arg_2.x, 47892u), arg_1), select(arg_1, arg_1, true), true))), _wgslsmith_f_op_f32(select(-1000f, -327f, true)));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, var_2.a, var_2.a, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-29937i, global0.a, global0.a, global0.a), vec4<i32>(var_2.a, var_2.a, 25200i, var_2.a))), vec4<i32>(max(47120i, -2147483647i), abs(-1i), global0.a & global0.a, -29134i) ^ ~vec4<i32>(0i, global0.a, var_2.a, global0.a)), vec4<u32>(14152u, 4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.b.x, _wgslsmith_mod_u32(global2.x, 81333u)), _wgslsmith_mult_u32(~u_input.a.x, global0.b.x)), abs(countOneBits(~4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1046f))));
    var var_4 = -select(~select(select(vec3<i32>(global0.a, 0i, var_3.a), vec3<i32>(var_3.a, -53987i, -1i), false), _wgslsmith_sub_vec3_i32(vec3<i32>(var_3.a, -44731i, var_3.a), vec3<i32>(-11333i, global0.a, var_3.a)), vec3<bool>(false, true, true)), reverseBits(vec3<i32>(13312i, 8154i, 31963i) | vec3<i32>(-2147483647i, -9538i, var_2.a)) & firstTrailingBit(reverseBits(vec3<i32>(-1i, -2147483647i, global0.a))), !any(vec4<bool>(true, true, false, true)) || !any(vec3<bool>(true, true, false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1333f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-862f + -542f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), any(vec2<bool>(false, true))))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(-global0.a, ~abs(abs(global0.b)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_1(_wgslsmith_add_i32(global0.a, global0.a), vec4<u32>(1u, global2.x, global0.b.x, global0.b.x) ^ vec4<u32>(global2.x, global2.x, global2.x, 29489u), _wgslsmith_f_op_f32(-742f - global0.c)), global0.c)), ~firstTrailingBit(reverseBits(vec4<u32>(global0.b.x, global2.x, u_input.a.x, global2.x))), firstTrailingBit(~(~vec2<u32>(global0.b.x, 44009u))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1069f);
    var var_2 = any(vec2<bool>(abs(var_0.b.x) > _wgslsmith_dot_vec3_u32(var_0.b.wyw, vec3<u32>(global0.b.x, global0.b.x, 89796u)), !all(vec2<bool>(true, true)))) != !(false && all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_3 = countOneBits(var_0.b.x);
    return global1[_wgslsmith_index_u32(var_0.b.x, 23u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 30289u << (_wgslsmith_mult_u32(firstLeadingBit(global2.x), ~global2.x) % 32u)), global2.x);
    var var_1 = Struct_1(min(~arg_0.a, _wgslsmith_div_i32(-65531i, global0.a) << (~arg_0.b.x % 32u)), global0.b, 557f);
    var var_2 = arg_0;
    global3 = array<vec3<u32>, 7>();
    var var_3 = Struct_1(2147483647i, countOneBits(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_2.b.x, 1u, 64322u, 4294967295u)), arg_0.b, abs(~vec4<u32>(0u, arg_0.b.x, 4418u, 4294967295u)))), func_1().c);
    return Struct_1(arg_0.a, var_3.b, _wgslsmith_f_op_f32(func_4(func_1().c, firstLeadingBit(max(vec4<u32>(1u, 51230u, 13177u, global2.x), select(global0.b, var_3.b, false))), var_1.b.zz)));
}

fn func_6(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-(~var_0.a), ~global0.a), 1i);
    let var_2 = func_5(var_0, global0.c);
    let var_3 = Struct_1(-4453i, func_1().b, var_2.c);
    let var_4 = Struct_1((i32(-1i) * -firstLeadingBit(var_0.a)) >> (~4294967295u % 32u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~4294967295u, ~var_0.b.x, abs(u_input.a.x)), vec4<u32>(var_0.b.x, var_3.b.x, 4294967295u, 1u), abs(~vec4<u32>(arg_1.x, 8543u, global2.x, arg_0.x)) & var_2.b), _wgslsmith_f_op_f32(-func_1().c));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_mod_i32(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, global0.a, global0.a), vec3<i32>(-61334i, -2147483647i, 0i))), 0i), ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.x, 102864u, 1u, 4294967295u), abs(global0.b)), ~(global0.b ^ global0.b), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.c)))));
    global3 = array<vec3<u32>, 7>();
    let var_0 = global1[_wgslsmith_index_u32(17980u, 23u)];
    let var_1 = func_6(vec2<u32>(~abs(u_input.a.x), global2.x), ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, global2.x, global0.b.x), vec4<u32>(var_0.b.x, 8693u, global2.x, var_0.b.x), select(global0.b, var_0.b, true)), firstLeadingBit(vec4<u32>(var_0.b.x, 4294967295u, u_input.a.x, 1u))), func_5(func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.c)))) * _wgslsmith_f_op_f32(-var_0.c))), true || !select(all(vec2<bool>(true, false)), select(false, true, true), true));
    let var_2 = all(!vec3<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), any(vec3<bool>(false, false, false)), false));
    global0 = var_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_5(var_1, func_6(~var_1.b.wz, vec4<u32>(4294967295u, global0.b.x, 21886u, 60199u), func_5(Struct_1(var_0.a, vec4<u32>(4294967295u, var_1.b.x, 8251u, 0u), var_0.c), -2303f), true).c).c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(162f, abs(global0.b), vec2<u32>(global0.b.x, 1u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(min(var_0.a, var_1.a), ~(-7831i)), select(vec3<i32>(~(-1i), 0i, 0i) | vec3<i32>(global0.a, -2147483647i & var_0.a, var_1.a), vec3<i32>(_wgslsmith_mod_i32(var_1.a, 1i << (u_input.a.x % 32u)), min(global0.a, _wgslsmith_sub_i32(2147483647i, global0.a)), func_1().a), select(select(vec3<bool>(true, var_2, false), !vec3<bool>(var_2, var_2, false), true), !select(vec3<bool>(false, var_2, false), vec3<bool>(var_2, false, var_2), vec3<bool>(true, var_2, var_2)), !select(vec3<bool>(var_2, true, false), vec3<bool>(true, var_2, false), vec3<bool>(var_2, false, true)))), var_1.a ^ abs(var_0.a), max(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2109i, var_0.a), vec2<i32>(1i, -14479i)), -25975i), abs(vec2<i32>(firstTrailingBit(1i), -56611i))), global0.c);
}

