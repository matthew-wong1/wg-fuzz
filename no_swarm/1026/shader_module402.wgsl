struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

var<private> global1: Struct_3 = Struct_3(vec4<bool>(false, true, true, true), vec4<i32>(-30619i, -17980i, 1i, -2189i), Struct_2(4294967295u, Struct_1(vec2<bool>(true, false), vec4<f32>(1342f, 151f, 1083f, 926f), vec3<u32>(0u, 66372u, 3870u), 1i, vec3<bool>(true, false, true)), Struct_1(vec2<bool>(false, false), vec4<f32>(2177f, 156f, 1053f, -315f), vec3<u32>(2078u, 1u, 1u), -39438i, vec3<bool>(false, true, true)), vec3<i32>(0i, 25229i, 12696i)));

var<private> global2: i32;

var<private> global3: vec4<u32> = vec4<u32>(41624u, 1u, 0u, 62213u);

var<private> global4: array<f32, 16>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_4(Struct_3(vec4<bool>(true, u_input.b != global1.c.d.x, global1.a.x || false, false), vec4<i32>(~u_input.b, -57490i, -_wgslsmith_add_i32(2147483647i, u_input.b), firstTrailingBit(global1.b.x)), global1.c), Struct_1(!global1.c.b.e.xy, _wgslsmith_f_op_vec4_f32(-global1.c.b.b), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 3526u, 56546u), vec3<u32>(global1.c.a, global3.x, global3.x)), max(_wgslsmith_div_vec3_u32(vec3<u32>(22556u, 0u, u_input.c), vec3<u32>(global3.x, 0u, 1u)), countOneBits(global3.wyz)), global1.c.b.c), _wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -24333i), vec2<i32>(0i, u_input.b)), u_input.b << (global1.c.c.c.x % 32u), u_input.b)), global1.c.c.e));
    global3 = _wgslsmith_clamp_vec4_u32(~(~min(vec4<u32>(22357u, u_input.c, 0u, 4294967295u), vec4<u32>(var_0.a.c.c.c.x, u_input.c, global1.c.a, 4294967295u)) ^ ~(~vec4<u32>(var_0.a.c.b.c.x, global3.x, 67154u, 7229u))), ~vec4<u32>(arg_0.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.x, 4294967295u), 4294967295u), u_input.a, _wgslsmith_mult_u32(global3.x | u_input.a, arg_0.x << (0u % 32u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a, min(u_input.c, global1.c.c.c.x), _wgslsmith_div_u32(0u, 4294967295u), 1u >> (global1.c.b.c.x % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.x, 0u, 79134u), vec4<u32>(16123u, 3673u, 28402u, 1u), vec4<u32>(global3.x, 88603u, var_0.a.c.a, global1.c.b.c.x)) ^ firstTrailingBit(vec4<u32>(1u, global3.x, 0u, 40225u))));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(min(global3.x, 1u), 5086u, var_0.b.c.x, 1u) & ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.c.x, u_input.c, 99588u, u_input.a), vec4<u32>(1u, 1u, 4294967295u, 4294967295u))), _wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(32360u, 16612u, global3.x, var_0.a.c.b.c.x)), vec4<u32>(~global1.c.b.c.x, _wgslsmith_dot_vec2_u32(global3.xx, arg_0), ~25164u, arg_0.x) | min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, global1.c.c.c.x, arg_0.x, arg_0.x), vec4<u32>(global1.c.b.c.x, 7170u, global3.x, global3.x)), vec4<u32>(global3.x, 58982u, global3.x, u_input.c)))), 16u)];
    var var_2 = global1.c.b.b.wy;
    let var_3 = all(var_0.a.a) && false;
    return vec3<bool>(all(select(vec4<bool>(true, false || var_3, true, true), !vec4<bool>(true, global1.a.x, false, var_3), false)), false, any(select(vec2<bool>(var_3 & false, true), var_0.a.c.c.e.zx, global1.a.yx)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    global4 = array<f32, 16>();
    global0 = array<Struct_4, 1>();
    var var_0 = global0[_wgslsmith_index_u32(max(global3.x, _wgslsmith_div_u32(~(~1u), ~92807u)) << (~countOneBits(50152u) % 32u), 1u)];
    var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 1u)];
    global2 = _wgslsmith_div_i32(16068i, countOneBits(-27569i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1564f, _wgslsmith_f_op_f32(f32(-1f) * -1442f), all(vec4<bool>(all(global1.a), false, all(arg_3.xx), true)))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = 325f < _wgslsmith_f_op_f32(func_4(!(!select(global1.a, global1.a, vec4<bool>(true, global1.c.b.e.x, global1.a.x, global1.c.c.a.x))), global1.c.c.c.xy, 0i, !func_3(~vec2<u32>(global1.c.c.c.x, global3.x))));
    global3 = ~vec4<u32>(u_input.c, 1u & (~global1.c.b.c.x | ~4294967295u), 55281u, 0u);
    global2 = reverseBits(select(-7486i, firstTrailingBit(-abs(u_input.b)), any(!func_3(vec2<u32>(72863u, 4294967295u)).xx)));
    global2 = -1i;
    let var_1 = _wgslsmith_dot_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(2268u, global3.x, 4294967295u, global3.x), vec4<u32>(global1.c.a, u_input.a, 22736u, u_input.c)) >> (max(vec4<u32>(global3.x, 1u, u_input.a, global3.x), vec4<u32>(11923u, u_input.c, global1.c.c.c.x, u_input.c)) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a, ~(5572u & global1.c.a), u_input.a, 33464u) % vec4<u32>(32u)), vec4<u32>(1u, max(~global1.c.b.c.x, u_input.c), 64493u | u_input.c, u_input.a));
    return global1.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    global4 = array<f32, 16>();
    global3 = _wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(_wgslsmith_div_u32(10270u, 27168u), arg_2.b.c.x, _wgslsmith_dot_vec3_u32(global1.c.b.c, vec3<u32>(global1.c.a, global1.c.b.c.x, global1.c.c.c.x)), u_input.c)), ~vec4<u32>(1u, min(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1512u, 0u), arg_0.b.c.yy)), ~4294967295u, _wgslsmith_dot_vec2_u32(arg_0.c.c.yy, abs(vec2<u32>(4294967295u, 4294967295u)))));
    return func_2(1071f).c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    var var_0 = u_input.b;
    return select(any(arg_0.e.xz), any(select(vec4<bool>(arg_0.d > global1.b.x, false, global1.a.x, true), global1.a, vec4<bool>(false, func_2(global4[_wgslsmith_index_u32(u_input.c, 16u)]).c.e.x, any(vec4<bool>(arg_1.b.a.x, true, arg_1.c.a.x, true)), arg_2.b.e.x))), arg_0.e.x);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = func_6(func_5(func_2(_wgslsmith_f_op_f32(766f + global4[_wgslsmith_index_u32(global1.c.a, 16u)])), !vec4<bool>(global1.c.b.e.x, global1.a.x, global1.a.x, global1.a.x), Struct_4(Struct_3(vec4<bool>(false, false, true, false), global1.b, global1.c), func_2(1000f).b), _wgslsmith_dot_vec3_i32(vec3<i32>(-24118i, global1.b.x, global1.c.c.d) >> (vec3<u32>(4294967295u, u_input.c, global3.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, global1.b.x, u_input.b), global1.c.d))), global1.c, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, firstLeadingBit(12457u | u_input.c)), 1u)]) != false;
    global3 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~global1.c.c.c.x ^ reverseBits(u_input.a), _wgslsmith_clamp_u32(min(u_input.c, 105584u), _wgslsmith_sub_u32(0u, global1.c.c.c.x), _wgslsmith_add_u32(global3.x, 1u))), _wgslsmith_sub_u32(1u, global3.x)), ~reverseBits(global3.x), _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(26398u, u_input.a), ~global3.wx)), reverseBits(26987u)), max(firstLeadingBit(arg_0.x & u_input.c), ~(~global3.x)) >> (global3.x % 32u));
    let var_1 = func_2(global1.c.b.b.x);
    global3 = ~firstLeadingBit(min(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, 4294967295u, u_input.c, global3.x), vec4<u32>(6347u, 135333u, 4294967295u, global1.c.b.c.x))), ~vec4<u32>(0u, var_1.a, u_input.a, 21364u)));
    global3 = vec4<u32>(~(~global3.x), 14561u, 29386u, ~abs(50500u));
    return var_1;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(arg_3, Struct_1(select(vec2<bool>(all(vec2<bool>(false, arg_2)), !global1.c.c.e.x), global1.a.xy, false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2687f, arg_3.c.b.b.x, -590f, global1.c.c.b.x), arg_3.c.b.b) + func_2(217f).b.b), global1.c.b.b), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), arg_0.c.c), global3.xww) << ((arg_0.b.c ^ global3.xwy) % vec3<u32>(32u)), _wgslsmith_sub_i32(countOneBits(arg_1.d.x), arg_3.c.d.x) ^ _wgslsmith_div_i32(global1.b.x, u_input.b), func_5(func_2(_wgslsmith_f_op_f32(-arg_3.c.b.b.x)), !vec4<bool>(true, arg_3.c.b.e.x, arg_0.c.e.x, true), global0[_wgslsmith_index_u32(arg_3.c.a, 1u)], _wgslsmith_dot_vec2_i32(min(global1.c.d.yy, vec2<i32>(u_input.b, 21439i)), _wgslsmith_mult_vec2_i32(global1.c.d.zx, arg_3.b.zz))).e));
    let var_1 = ~2147483647i;
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(11522u), 1u)];
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(arg_1.c.c.x, 16u)], func_5(func_2(var_0.b.b.x), vec4<bool>(true, true, true, false), Struct_4(var_2.a, Struct_1(var_2.b.e.yz, vec4<f32>(-124f, 1000f, -1000f, 835f), vec3<u32>(6446u, arg_3.c.c.c.x, arg_1.b.c.x), 31018i, vec3<bool>(arg_0.c.a.x, var_0.a.c.b.e.x, arg_0.b.a.x))), 31710i).b.x, all(!var_0.a.c.c.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(457f)))))), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.c.c.x, reverseBits(arg_3.c.c.c.x) & _wgslsmith_div_u32(arg_0.b.c.x, 65332u)), 16u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b.x - _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 16u)]))) + arg_0.b.b.x));
    let var_4 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(var_0.a.a, _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.c.x, 0u), vec2<u32>(var_2.b.c.x, var_2.a.c.a)), firstTrailingBit(var_0.a.b.x), vec3<bool>(arg_2, true, false))), 220f) + 924f));
    return Struct_1(arg_3.c.b.a, _wgslsmith_f_op_vec4_f32(-arg_3.c.b.b), ~func_5(func_2(_wgslsmith_f_op_f32(1000f + 1339f)), !(!var_2.a.a), Struct_4(Struct_3(global1.a, arg_3.b, arg_1), var_4.c), firstTrailingBit(1i)).c, arg_3.c.c.d, !(!func_3(abs(vec2<u32>(global3.x, global1.c.a)))));
}

fn func_8(arg_0: Struct_1) -> Struct_3 {
    global3 = ~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, global3.x, 1u), abs(vec3<u32>(global3.x, 45850u, global1.c.c.c.x))), ~0u, 89529u, 1u);
    let var_0 = Struct_4(Struct_3(global1.a, vec4<i32>(~global1.c.b.d, ~49421i, _wgslsmith_add_i32(14099i, global1.c.c.d), global1.c.b.d) | vec4<i32>(global1.b.x, 1i, _wgslsmith_add_i32(global1.b.x, global1.b.x), -2147483647i ^ global1.c.b.d), Struct_2(u_input.a, Struct_1(vec2<bool>(true, false), arg_0.b, _wgslsmith_mult_vec3_u32(global3.yzy, vec3<u32>(101724u, 16447u, global1.c.b.c.x)), ~u_input.b, func_3(global1.c.c.c.zz)), arg_0, global1.b.yyx)), func_5(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c.c.b.x)))), global1.a, Struct_4(Struct_3(global1.a, global1.b, global1.c), arg_0), i32(-1i) * -_wgslsmith_mult_i32(-50937i, global1.b.x)));
    let var_1 = var_0.a;
    let var_2 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-global1.c.b.b), ~firstTrailingBit(var_0.a.c.b.c) & vec3<u32>(4294967295u | _wgslsmith_sub_u32(2809u, global1.c.c.c.x), max(4294967295u << (arg_0.c.x % 32u), ~arg_0.c.x), 1u), abs(0i), select(var_1.c.c.e, vec3<bool>(true, !func_1(var_0.a.c.b.c).b.a.x, true), vec3<bool>(true, true, func_6(func_5(Struct_2(18318u, var_0.b, arg_0, global1.c.d), vec4<bool>(arg_0.a.x, arg_0.e.x, arg_0.e.x, true), Struct_4(var_1, Struct_1(vec2<bool>(global1.a.x, true), vec4<f32>(-172f, global4[_wgslsmith_index_u32(global1.c.a, 16u)], -1526f, -1545f), arg_0.c, var_0.a.c.d.x, vec3<bool>(true, arg_0.e.x, false))), global1.c.d.x), Struct_2(global1.c.b.c.x, var_1.c.c, Struct_1(arg_0.e.xx, vec4<f32>(1211f, -2333f, global4[_wgslsmith_index_u32(var_1.c.b.c.x, 16u)], var_0.b.b.x), vec3<u32>(var_1.c.a, 0u, 46627u), 2147483647i, var_1.c.b.e), vec3<i32>(u_input.b, u_input.b, 0i)), Struct_4(Struct_3(vec4<bool>(true, true, false, var_1.a.x), global1.b, Struct_2(u_input.c, var_0.b, Struct_1(vec2<bool>(arg_0.a.x, true), global1.c.b.b, vec3<u32>(4294967295u, 35018u, 1u), var_0.a.b.x, vec3<bool>(false, false, false)), vec3<i32>(7770i, 1917i, -1i))), var_0.a.c.c)))));
    let var_3 = arg_0.c.x;
    return var_1;
}

fn func_9(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> StorageBuffer {
    global3 = vec4<u32>(_wgslsmith_mod_u32(33274u, countOneBits(4848u)), ~arg_3.c.b.c.x, ~reverseBits(~(~global1.c.b.c.x)), global3.x);
    let var_0 = vec4<i32>(47558i, global1.b.x, 5973i, arg_3.c.c.d);
    let var_1 = all(arg_3.a.ww);
    let var_2 = arg_2.c.x;
    let var_3 = Struct_4(Struct_3(vec4<bool>(true, select(!global1.a.x, true, global1.c.c.e.x), true, func_3(func_1(global3.xxx).c.c.zx).x), var_0, func_1(_wgslsmith_add_vec3_u32(vec3<u32>(24179u, 1u, 1u) ^ arg_3.c.c.c, vec3<u32>(arg_3.c.a, arg_2.c.x, 34078u)))), func_8(func_1(global1.c.b.c).c).c.b);
    return StorageBuffer(vec2<u32>(~(~abs(var_2)), 4294967295u), 0i, vec2<f32>(arg_2.b.x, arg_0.b.b.x), 0i, 51575u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_9(global1.c, _wgslsmith_f_op_f32(abs(-422f)), Struct_1(select(vec2<bool>(!global1.c.b.e.x, true), global1.a.xx, global1.c.b.e.x), global1.c.b.b, global3.zzy, 0i, select(global1.c.c.e, global1.a.xxw, global1.c.b.e)), func_8(func_7(func_1(max(vec3<u32>(u_input.a, global1.c.a, 1u), global1.c.c.c)), global1.c, true, Struct_3(select(vec4<bool>(global1.a.x, false, false, global1.a.x), vec4<bool>(true, global1.c.c.a.x, true, false), global1.a), -global1.b, global1.c))));
}

