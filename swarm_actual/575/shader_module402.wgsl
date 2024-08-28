struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<i32>(i32(-2147483648), 16387i, -3532i), vec4<bool>(true, true, false, true), 2147483647i), Struct_1(vec3<i32>(1i, -3197i, 1i), vec4<bool>(false, false, false, false), 49205i), Struct_1(vec3<i32>(40155i, 1i, 0i), vec4<bool>(false, false, false, false), 0i), Struct_1(vec3<i32>(-33170i, 37097i, -1i), vec4<bool>(true, true, false, true), 1i), Struct_1(vec3<i32>(19755i, -8123i, 2147483647i), vec4<bool>(true, false, false, true), -35382i), Struct_1(vec3<i32>(2147483647i, 68617i, 74697i), vec4<bool>(true, true, true, true), i32(-2147483648)), Struct_1(vec3<i32>(1i, 15340i, 0i), vec4<bool>(true, true, false, true), 1i), Struct_1(vec3<i32>(2558i, 2147483647i, -1i), vec4<bool>(true, true, false, false), 0i), Struct_1(vec3<i32>(-42800i, -1i, 0i), vec4<bool>(true, false, false, true), 12339i), Struct_1(vec3<i32>(-1i, -1i, -1i), vec4<bool>(true, true, false, false), 42699i), Struct_1(vec3<i32>(i32(-2147483648), 43539i, 1i), vec4<bool>(true, true, false, true), 7975i), Struct_1(vec3<i32>(-59213i, i32(-2147483648), 0i), vec4<bool>(false, true, false, true), 1i), Struct_1(vec3<i32>(2266i, 11314i, -1i), vec4<bool>(false, true, false, false), 1i), Struct_1(vec3<i32>(1i, 0i, 2147483647i), vec4<bool>(true, false, true, true), 1i), Struct_1(vec3<i32>(-41220i, -22078i, 270i), vec4<bool>(true, false, false, true), -1i), Struct_1(vec3<i32>(54597i, -34520i, -28602i), vec4<bool>(true, true, true, true), 1i), Struct_1(vec3<i32>(1i, 33656i, i32(-2147483648)), vec4<bool>(true, true, true, true), 0i), Struct_1(vec3<i32>(i32(-2147483648), 0i, 59130i), vec4<bool>(true, false, true, false), -8272i), Struct_1(vec3<i32>(i32(-2147483648), -32998i, 2433i), vec4<bool>(false, true, true, false), 1i), Struct_1(vec3<i32>(-4188i, i32(-2147483648), -20199i), vec4<bool>(false, true, true, true), 0i), Struct_1(vec3<i32>(i32(-2147483648), 0i, -24661i), vec4<bool>(false, false, false, true), -25223i), Struct_1(vec3<i32>(2147483647i, 44920i, 1i), vec4<bool>(true, true, true, false), -6172i), Struct_1(vec3<i32>(0i, 18721i, -49047i), vec4<bool>(true, true, true, true), -11415i), Struct_1(vec3<i32>(-1i, -30729i, 1i), vec4<bool>(true, true, false, false), 0i), Struct_1(vec3<i32>(0i, -1i, 0i), vec4<bool>(true, true, false, false), 17394i), Struct_1(vec3<i32>(-1i, 2147483647i, 29218i), vec4<bool>(false, true, false, false), 1i), Struct_1(vec3<i32>(-40997i, -2337i, -17711i), vec4<bool>(false, true, false, false), i32(-2147483648)));

var<private> global2: array<u32, 19>;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(-8807i, i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, true), i32(-2147483648));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> i32 {
    return -1i;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-109f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1677f)))), -1374f)));
    let var_1 = 1u;
    var var_2 = global0.x && true;
    global0 = !(!(!(!vec2<bool>(false, global4.b.x))));
    return arg_3;
}

fn func_1() -> vec2<bool> {
    let var_0 = func_3(~global3.c, vec3<i32>(global3.a.x, reverseBits(-(~(-36734i))), -35967i), _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -5971i, 2147483647i, 13230i), -vec4<i32>(-50490i, 4682i, global3.a.x, -1i)), select(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, -2147483647i, 1i), vec4<i32>(46736i, global3.c, global3.c, global3.c)), vec4<i32>(func_2(), func_2(), -42163i, min(0i, global3.c)), all(vec3<bool>(global3.b.x, false, true))), max(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(24803i, 56i, global3.a.x, 2147483647i), vec4<i32>(-23491i, global3.a.x, 2147483647i, 9483i), vec4<i32>(global4.a.x, 43214i, global3.c, -2147483647i)), abs(vec4<i32>(5353i, 58247i, 17977i, -1i))), vec4<i32>(abs(-37401i), _wgslsmith_div_i32(61842i, global3.c), global3.a.x, _wgslsmith_sub_i32(-17588i, global3.a.x)))), global1[_wgslsmith_index_u32(~(~(~u_input.a.x)), 27u)]);
    let var_1 = (vec4<i32>(-firstTrailingBit(var_0.a.x), _wgslsmith_add_i32(~global3.c, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global4.c, global3.a.x), global3.a)), global3.a.x, -17883i) | firstTrailingBit(select(countOneBits(vec4<i32>(global3.c, global4.a.x, var_0.c, -4664i)), vec4<i32>(-29297i, -22604i, var_0.a.x, 14770i), global3.b))) << ((((_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.a.x, 11486u), vec4<u32>(4294967295u, 0u, 1u, 32640u)) & ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32978u)) >> (vec4<u32>(~global2[_wgslsmith_index_u32(68377u, 19u)], u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(~(vec4<u32>(30727u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19086u, 19u)], 19u)], 91360u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37065u, 19u)], 19u)], 19u)], 19u)]) >> (vec4<u32>(15507u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(6526u, 19u)], u_input.a.x, u_input.a.x, 55444u), select(vec4<u32>(27212u, u_input.a.x, u_input.a.x, 19274u), vec4<u32>(91889u, 27997u, global2[_wgslsmith_index_u32(59497u, 19u)], global2[_wgslsmith_index_u32(26032u, 19u)]), true)), vec4<u32>(_wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_add_u32(u_input.a.x, 53261u), countOneBits(16569u), ~global2[_wgslsmith_index_u32(0u, 19u)]))) % vec4<u32>(32u));
    var var_2 = true;
    global4 = Struct_1(select(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(global3.a, global3.a, global4.a), abs(var_0.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.x, 1i) ^ vec3<i32>(var_0.c, 32407i, 36791i), _wgslsmith_mult_vec3_i32(vec3<i32>(7501i, -53396i, -4861i), var_1.xzz))), vec3<i32>(global4.c, var_1.x, -15142i), all(vec2<bool>(true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)] >= global2[_wgslsmith_index_u32(39321u, 19u)]))), select(vec4<bool>(global3.b.x, var_1.x != global3.c, true & global0.x, true), var_0.b, func_3(46638i, select(reverseBits(vec3<i32>(global4.c, 126i, -4005i)), _wgslsmith_add_vec3_i32(var_1.yxw, vec3<i32>(-54025i, var_1.x, 2147483647i)), select(global3.b.wzx, vec3<bool>(true, true, global3.b.x), vec3<bool>(global3.b.x, var_0.b.x, var_0.b.x))), var_1, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(16603u, u_input.a.x)), 27u)]).b), global4.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-611f, _wgslsmith_f_op_f32(f32(-1f) * -1722f))) * _wgslsmith_f_op_f32(select(-679f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1118f, _wgslsmith_f_op_f32(-802f + -511f))) * _wgslsmith_f_op_f32(191f + _wgslsmith_f_op_f32(-1062f * 2225f))), global3.a.x > 28121i)));
    return select(!vec2<bool>(func_3(i32(-1i) * -21603i, ~global4.a, vec4<i32>(30826i, 19849i, var_0.a.x, global3.c) & vec4<i32>(global3.a.x, var_0.c, 1i, var_0.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 27u)]).b.x, all(func_3(-1i, vec3<i32>(global3.a.x, 1i, 0i), vec4<i32>(var_0.a.x, global4.c, global3.a.x, var_0.c), var_0).b)), !vec2<bool>(true, global4.b.x), global4.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(firstTrailingBit(vec3<i32>(global3.a.x, global3.a.x & -1i, abs(39951i))) | -(~(-vec3<i32>(global4.a.x, -51332i, global4.c))), vec4<bool>(global0.x, !global3.b.x, false, global0.x), 1i);
    global0 = func_1();
    let var_0 = !global3.b;
    global1 = array<Struct_1, 27>();
    let var_1 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(26954u, 19u)] >> (1u % 32u)), abs(select(u_input.a, u_input.a, vec2<bool>(global0.x, global0.x))) << ((~u_input.a << (max(vec2<u32>(0u, 4294967295u), u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)))), 19u)], 27u)];
    var var_2 = global1[_wgslsmith_index_u32(~1u, 27u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(460f, -403f, 1943f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(181f, -1234f, 2024f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2138f, -983f, -2128f)))));
    let var_4 = func_3(abs(~max(-var_2.c, countOneBits(-35629i))), vec3<i32>(-firstTrailingBit(_wgslsmith_dot_vec3_i32(var_2.a, var_1.a)), 40575i, firstLeadingBit(-2147483647i)), firstTrailingBit(max(min(vec4<i32>(-14166i, global4.a.x, var_1.a.x, var_2.c), select(vec4<i32>(global4.c, -2147483647i, 2147483647i, global4.a.x), vec4<i32>(var_1.a.x, -15246i, -1i, global3.c), var_0)), vec4<i32>(var_2.a.x >> (100997u % 32u), var_2.a.x, ~1i, var_1.c))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_sub_u32(u_input.a.x, global2[_wgslsmith_index_u32(0u, 19u)])), global2[_wgslsmith_index_u32(~1u, 19u)]), 27u)]);
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1162f)))), 948f, -1736f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1455f, -897f, 1251f) - vec4<f32>(-784f, 193f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-863f * -371f), var_3.x)), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.yzw, _wgslsmith_add_i32(var_4.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, var_2.c)), _wgslsmith_div_vec2_i32(var_2.a.zz, vec2<i32>(var_4.a.x, global4.a.x))), (i32(-1i) * -1i) | ~var_4.a.x)), -vec4<i32>(-abs(19939i), _wgslsmith_dot_vec2_i32(-global3.a.zz, vec2<i32>(var_2.c, -1i)), 1i, -1i));
}

