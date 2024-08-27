struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(2147483647i, -1i, -20817i));

var<private> global3: Struct_2 = Struct_2(vec3<i32>(1i, 0i, 1i));

var<private> global4: Struct_1 = Struct_1(1u, vec2<i32>(-11831i, 0i), true, 13940i, vec3<i32>(0i, 3020i, -1i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    global4 = Struct_1(~global4.a, global3.a.xx & vec2<i32>(u_input.c.x, -32557i), true, 56326i >> (reverseBits(~(~global1.x)) % 32u), -max(vec3<i32>(-2147483647i, u_input.c.x, _wgslsmith_div_i32(0i, global3.a.x)), -countOneBits(u_input.c)));
    var var_0 = countOneBits(vec4<i32>(firstTrailingBit(-2147483647i), global4.d, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(global4.e.x, global3.a.x, global4.b.x, -24844i)), -vec4<i32>(global3.a.x, 2147483647i, -8021i, -2147483647i)), -2147483647i));
    global3 = Struct_2(~global3.a);
    global0 = array<Struct_1, 10>();
    let var_1 = select(select(!(!vec2<bool>(false, global4.c)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(global4.c, true), vec2<bool>(global4.c, false), global4.c), !vec2<bool>(global4.c, global4.c)), select(true, global4.c, !global4.c)), !((global4.c & false) & true)), !(!select(!vec2<bool>(global4.c, global4.c), select(vec2<bool>(true, global4.c), vec2<bool>(global4.c, global4.c), global4.c), select(true, global4.c, global4.c))), !(!select(!vec2<bool>(global4.c, global4.c), vec2<bool>(false, true), vec2<bool>(true, false))));
    return min(min(~_wgslsmith_sub_u32(firstTrailingBit(124049u), firstLeadingBit(u_input.b.x)), global4.a), _wgslsmith_sub_u32(firstLeadingBit(global4.a) << (global4.a % 32u), global4.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(global2.a.x << (0u % 32u), abs(67081i)), u_input.c.x, ~(global4.d >> (arg_2 % 32u))) & vec3<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), -22895i, max(1i, ~(-2147483647i))));
    let var_1 = Struct_1(func_3(), min(vec2<i32>(-8025i, ~(-1i)) >> (u_input.b.zw % vec2<u32>(32u)), vec2<i32>(1i ^ ~u_input.c.x, ~(~arg_1.a.x))), global4.c | true, global4.e.x, _wgslsmith_add_vec3_i32(vec3<i32>(493i, firstLeadingBit(-arg_1.a.x), abs(i32(-1i) * -1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(global4.e, -u_input.c), _wgslsmith_clamp_vec3_i32(global4.e, ~vec3<i32>(-17132i, 0i, arg_1.a.x), global2.a))));
    var var_2 = arg_1;
    var var_3 = select(u_input.b.xyw, ~vec3<u32>(0u, max(u_input.a, global4.a) | _wgslsmith_dot_vec2_u32(u_input.b.wx, u_input.b.zx), ~1u), all(vec4<bool>(any(vec2<bool>(true, true)), true, -var_2.a.x == (i32(-1i) * -12400i), global4.c)));
    let var_4 = ~abs(var_2.a.x);
    return _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_clamp_i32(-65604i, var_0.a.x, -1i), 46686i, min(var_4, -9445i), max(u_input.c.x, 38270i)) | vec4<i32>(global4.d, 362i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, var_4), global4.b.x), _wgslsmith_clamp_i32(global3.a.x << (global4.a % 32u), global4.b.x, global4.e.x)), vec4<i32>(max(1i, 0i), global3.a.x, var_2.a.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(global4.e.x, firstLeadingBit(var_1.d), var_0.a.x), abs(1i))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(global2.a.x, firstTrailingBit(-_wgslsmith_mod_i32(1i, -20745i)), 1i, u_input.c.x & global2.a.x), _wgslsmith_clamp_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(u_input.c.x, 0i, 35220i, 45816i))), -func_2(vec3<f32>(252f, 208f, -311f), Struct_2(global2.a), 20569u), ~select(vec4<i32>(global4.b.x, global4.d, u_input.c.x, global4.b.x), vec4<i32>(u_input.c.x, -2147483647i, -1i, global2.a.x), false)) & ~countOneBits(vec4<i32>(-2147483647i, 0i, global2.a.x, u_input.c.x)));
    let var_1 = global0[_wgslsmith_index_u32(global4.a, 10u)];
    let var_2 = !select(vec3<bool>(true, false, u_input.c.x <= global3.a.x), vec3<bool>(any(vec3<bool>(global4.c, true, true)), false, true), vec3<bool>(!var_1.c, true, true));
    var var_3 = select(!vec4<bool>(global4.c, true, ~0u != _wgslsmith_mult_u32(u_input.b.x, global1.x), _wgslsmith_f_op_f32(sign(-548f)) <= _wgslsmith_div_f32(-959f, 986f)), !(!vec4<bool>(global4.c, !var_2.x, u_input.c.x <= var_1.b.x, var_2.x)), !vec4<bool>(any(vec4<bool>(false, true, var_1.c, var_2.x)), _wgslsmith_f_op_f32(round(-176f)) != _wgslsmith_f_op_f32(246f * 1087f), var_2.x, var_1.c));
    var_3 = vec4<bool>(true, select(true, !var_3.x, all(vec4<bool>(true, var_3.x, !global4.c, !global4.c))), var_1.c, firstLeadingBit(0u) > ~(~global1.x));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_1(), 10u)];
    let var_1 = -706f;
    global2 = Struct_2(~(global4.e << (vec3<u32>(global1.x, _wgslsmith_clamp_u32(global4.a, global4.a, 59407u), u_input.a) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(116f)));
    let var_3 = Struct_2(-vec3<i32>(-(~global2.a.x), abs(~global4.b.x), -43080i));
    global3 = Struct_2(-min(global3.a, var_0.e));
    let var_4 = 1720f;
    let var_5 = select(vec2<bool>(global4.c, !var_0.c), vec2<bool>(48089u >= (u_input.a | ~44340u), false), !(!select(select(vec2<bool>(var_0.c, global4.c), vec2<bool>(global4.c, var_0.c), vec2<bool>(global4.c, true)), vec2<bool>(false, global4.c), true)));
    let var_6 = _wgslsmith_mult_u32(global4.a, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x & _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_3.a.x, -35828i) >> (~var_6 % 32u), 0i));
}

