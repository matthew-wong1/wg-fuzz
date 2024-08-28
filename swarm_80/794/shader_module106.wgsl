struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_2(vec3<bool>(true, true, true), 0i, vec3<i32>(i32(-2147483648), i32(-2147483648), 939i))), Struct_4(Struct_2(vec3<bool>(true, false, false), -13061i, vec3<i32>(i32(-2147483648), 21272i, -24613i))), Struct_4(Struct_2(vec3<bool>(true, true, true), 1i, vec3<i32>(-17275i, -1i, 16034i))), Struct_4(Struct_2(vec3<bool>(false, false, true), 0i, vec3<i32>(0i, 49207i, 0i))));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: vec4<f32> = vec4<f32>(-254f, 588f, -1375f, 1409f);

var<private> global3: i32 = 6149i;

var<private> global4: i32 = -1i;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    return vec2<u32>(u_input.c, u_input.c);
}

fn func_2(arg_0: vec4<i32>) -> Struct_5 {
    return Struct_5(_wgslsmith_f_op_f32(global2.x + -1830f) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-304f - -1590f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) - _wgslsmith_f_op_f32(trunc(global2.x))))), arg_0, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, u_input.c), func_3()), -_wgslsmith_dot_vec4_i32(-(~vec4<i32>(2147483647i, -1i, arg_0.x, 0i)), countOneBits(firstTrailingBit(arg_0))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: i32, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_4, 4>();
    var var_0 = arg_1.a.c.x;
    global3 = min(~_wgslsmith_dot_vec4_i32(~arg_0.b, arg_0.b), _wgslsmith_dot_vec3_i32(arg_0.b.wwz, reverseBits(vec3<i32>(u_input.b.x, 1i, 19565i)))) >> (58835u % 32u);
    global4 = -(~(-1i));
    return Struct_3(~u_input.c, vec2<i32>(2147483647i, arg_1.a.c.x), ~(~u_input.c), !arg_1.a.a.zy, !vec3<bool>(any(vec3<bool>(true, true, arg_1.a.a.x)), arg_0.a, false));
}

fn func_5(arg_0: Struct_3) -> bool {
    var var_0 = false;
    return u_input.c == firstTrailingBit(1u ^ _wgslsmith_mult_u32(arg_0.a, _wgslsmith_mult_u32(4294967295u, 0u)));
}

fn func_6(arg_0: bool, arg_1: Struct_5) -> vec2<i32> {
    let var_0 = true;
    var var_1 = min(-max(_wgslsmith_clamp_vec4_i32(-arg_1.b, -vec4<i32>(2147483647i, u_input.b.x, u_input.a, -2147483647i), arg_1.b << (vec4<u32>(29148u, 16692u, 0u, 1u) % vec4<u32>(32u))), arg_1.b), abs(select(_wgslsmith_div_vec4_i32(vec4<i32>(-32211i, -67649i, -8822i, 1i), vec4<i32>(0i, arg_1.d, arg_1.d, 17852i)), vec4<i32>(arg_1.b.x, -18017i, 2147483647i, u_input.b.x), select(vec4<bool>(false, false, false, false), vec4<bool>(global1.x, true, true, arg_0), vec4<bool>(arg_0, arg_1.a, false, false))) | arg_1.b));
    let var_2 = Struct_2(vec3<bool>(arg_0, !func_5(func_4(arg_1, Struct_4(Struct_2(vec3<bool>(arg_0, true, true), -6953i, u_input.b)), var_1.x, global2.wyz)), !(!arg_0)), var_1.x, arg_1.b.ywx);
    return arg_1.b.wz;
}

fn func_7(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_5, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_2(!(!vec3<bool>(arg_2.a, all(vec3<bool>(true, true, global1.x)), false)), _wgslsmith_div_i32(-19730i, arg_0.x), arg_2.b.wyy);
    var var_1 = abs(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.c, 58312u, arg_1) << ((vec3<u32>(7571u, arg_1, arg_2.c.x) >> (vec3<u32>(arg_1, arg_1, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 13029u, 0u), firstTrailingBit(vec3<u32>(45469u, 21853u, 4294967295u))))));
    global0 = array<Struct_4, 4>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u << (arg_1 % 32u), arg_2.c.x, ~countOneBits(func_2(arg_2.b).c.x)), _wgslsmith_div_vec4_u32(~(~max(vec4<u32>(0u, 61597u, 0u, 4294967295u), vec4<u32>(0u, 10275u, var_1.x, arg_2.c.x))), vec4<u32>(1u, ~u_input.c, 4294967295u, ~0u) | (max(vec4<u32>(0u, arg_1, u_input.c, 6837u), vec4<u32>(1u, arg_1, arg_1, 66887u)) & countOneBits(vec4<u32>(56004u, 98289u, 4294967295u, u_input.c))))), 4u)];
    let var_3 = ~((_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -7490i), vec2<i32>(23449i, 17428i) << (arg_2.c % vec2<u32>(32u)), -arg_0) ^ _wgslsmith_mult_vec2_i32(arg_0, select(u_input.b.zy, var_2.a.c.zx, true))) & (select(arg_2.b.zw ^ arg_0, var_0.c.zx, func_4(Struct_5(false, vec4<i32>(arg_2.d, arg_2.d, -56466i, u_input.b.x), arg_2.c, -54617i), global0[_wgslsmith_index_u32(58907u, 4u)], var_2.a.b, global2.xwz).e.x) << (((var_1.xy >> (vec2<u32>(arg_2.c.x, 0u) % vec2<u32>(32u))) & _wgslsmith_add_vec2_u32(var_1.yz, vec2<u32>(15082u, arg_2.c.x))) % vec2<u32>(32u))));
    return global0[_wgslsmith_index_u32(u_input.c, 4u)];
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_7(func_6(func_5(func_4(func_2(vec4<i32>(44197i, -1i, u_input.b.x, -29421i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(1u, 15566u, arg_0, arg_0)), 4u)], u_input.b.x, global2.zzz)), func_2(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, u_input.b.x, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.b.x, -2147483647i)))), countOneBits(func_2(vec4<i32>(u_input.b.x, 0i, u_input.b.x, func_2(vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i)).b.x)).c.x), func_2(vec4<i32>(1i, -u_input.a, select(u_input.a, u_input.b.x, true) ^ u_input.a, 0i)), global2.x);
    let var_1 = ~(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.c, arg_0, u_input.c)), ~vec3<u32>(arg_0, u_input.c, 1u)) ^ vec3<u32>(4294967295u, u_input.c, min(4294967295u, 16629u))) << (~(~vec3<u32>(u_input.c, func_2(vec4<i32>(var_0.a.b, 2147483647i, u_input.a, 2693i)).c.x, 75323u & arg_0)) % vec3<u32>(32u));
    let var_2 = Struct_1(var_0.a.c, vec4<f32>(global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, 826f)))), _wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))));
    let var_3 = vec2<u32>(max(_wgslsmith_clamp_u32(~9821u, arg_0, min(arg_0, 4294967295u)), _wgslsmith_div_u32(max(3488u, u_input.c), _wgslsmith_mult_u32(19309u, arg_0))) & (abs(137614u) ^ firstLeadingBit(var_1.x)), ~(~func_2(vec4<i32>(-43102i, var_2.a.x, var_0.a.c.x, 20651i)).c.x));
    let var_4 = _wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.c);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.yy;
    var_0 = ~(-vec2<i32>(~var_0.x, func_1(~45193u)));
    var var_1 = Struct_1(func_7(u_input.b.xy, _wgslsmith_div_u32(countOneBits(u_input.c), 1u), Struct_5(global1.x, vec4<i32>(~u_input.b.x, ~(-1i), -1i, var_0.x), min(_wgslsmith_div_vec2_u32(vec2<u32>(22996u, u_input.c), vec2<u32>(20623u, 1u)), func_2(vec4<i32>(var_0.x, 36272i, 1i, u_input.a)).c), -1i), -555f).a.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1131f, global2.x, -1965f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -617f, -862f, -248f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(trunc(-678f)))))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 4u)];
    var_0 = ~(~(-_wgslsmith_mult_vec2_i32(var_1.a.xz >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), var_1.a.zz)));
    let var_3 = select(var_2.a.a, var_2.a.a, select(func_4(Struct_5(all(var_2.a.a), select(vec4<i32>(31955i, u_input.a, u_input.b.x, -48535i), vec4<i32>(u_input.b.x, 0i, 2147483647i, 66503i), vec4<bool>(false, false, true, true)), abs(vec2<u32>(1u, 85486u)), -1i), func_7(u_input.b.yx & vec2<i32>(1i, -32691i), countOneBits(u_input.c), func_2(vec4<i32>(-1i, var_1.a.x, var_2.a.b, -1i)), global2.x), firstLeadingBit(firstTrailingBit(22840i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(781f, global2.x, 180f))).e, select(vec3<bool>(true, var_2.a.a.x, u_input.c >= u_input.c), var_2.a.a, any(vec2<bool>(global1.x, false))), any(global1.zx)));
    var var_4 = func_7(vec2<i32>(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(func_7(var_1.a.xz, 1u, Struct_5(false, vec4<i32>(1i, u_input.b.x, var_1.a.x, 0i), vec2<u32>(u_input.c, 4294967295u), u_input.b.x), var_1.b.x).a.c.x, ~44489i, u_input.a, var_0.x), (vec4<i32>(-67925i, -1i, var_2.a.b, var_0.x) & vec4<i32>(u_input.a, var_2.a.b, -2147483647i, var_2.a.b)) & select(vec4<i32>(2147483647i, var_1.a.x, 2147483647i, var_1.a.x), vec4<i32>(var_2.a.b, var_1.a.x, var_2.a.c.x, u_input.b.x), vec4<bool>(var_2.a.a.x, var_2.a.a.x, var_3.x, var_3.x)))), u_input.c, Struct_5(true, vec4<i32>(_wgslsmith_sub_i32(~var_0.x, -45705i), u_input.b.x, _wgslsmith_clamp_i32(45181i, func_4(Struct_5(false, vec4<i32>(var_2.a.b, -34694i, var_1.a.x, var_2.a.c.x), vec2<u32>(u_input.c, u_input.c), -1i), global0[_wgslsmith_index_u32(u_input.c, 4u)], var_0.x, vec3<f32>(-175f, var_1.b.x, global2.x)).b.x, var_1.a.x << (59276u % 32u)), var_1.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.c, 1u), vec2<u32>(4294967295u, 0u) << (~vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), min(u_input.b.x, i32(-1i) * -var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1037f - _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))));
    global3 = ~_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 1i, u_input.b.x, -52358i), vec4<i32>(var_0.x, 0i, u_input.b.x, u_input.a)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, var_4.a.b, -68095i, 18002i), firstTrailingBit(vec4<i32>(var_4.a.c.x, u_input.a, -46011i, 4462i)), vec4<i32>(var_0.x, u_input.a, 33534i, 1i)), ~(vec4<i32>(var_2.a.c.x, var_0.x, var_0.x, -1i) << ((vec4<u32>(71813u, 0u, u_input.c, 0u) >> (vec4<u32>(43563u, 0u, u_input.c, 45987u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~(~func_2(vec4<i32>(62620i, -32569i, -2147483647i, var_0.x)).b), -abs(vec4<i32>(var_2.a.b, -26143i, -18601i, var_2.a.c.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, u_input.c, u_input.c) | vec4<u32>(u_input.c, u_input.c, 20049u, 85547u), ~vec4<u32>(4294967295u, 64404u, 64913u, u_input.c)) % vec4<u32>(32u))), ~max(~vec3<u32>(u_input.c, 71375u, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, 2978u), vec3<u32>(4294967295u, u_input.c, 4294967295u) ^ vec3<u32>(u_input.c, u_input.c, u_input.c))), abs(func_2(func_2(vec4<i32>(20490i, -23188i, var_2.a.b, 2147483647i)).b).c), vec4<f32>(692f, _wgslsmith_f_op_f32(-var_1.b.x), 1000f, -906f));
}

