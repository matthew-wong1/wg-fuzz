struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -84756i;

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(27455u, vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 0u, 37314u), -146f));

var<private> global2: i32 = -30881i;

var<private> global3: array<u32, 6> = array<u32, 6>(5900u, 1u, 0u, 120410u, 4294967295u, 0u);

var<private> global4: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = -u_input.b.ww;
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2319f + _wgslsmith_div_f32(416f, -1645f)), arg_0, arg_1.c)), 580f));
    global4 = ~(~(~1u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1697f), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(round(-1000f))))) + arg_0), _wgslsmith_div_f32(772f, -1759f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), arg_0)));
    var var_3 = 0i;
    return _wgslsmith_f_op_f32(f32(-1f) * -842f);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> vec3<u32> {
    var var_0 = -u_input.b;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(1134f + _wgslsmith_f_op_f32(step(191f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(-1325f, Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(82628u, 6u)], arg_0.x, arg_0.x, u_input.c), global3[_wgslsmith_index_u32(39575u, 6u)], true, vec4<u32>(1u, u_input.c, global3[_wgslsmith_index_u32(3978u, 6u)], u_input.c))))))))));
    global4 = 0u;
    let var_2 = abs(-_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.b), u_input.b));
    var var_3 = Struct_2(var_1.a);
    return _wgslsmith_div_vec3_u32(vec3<u32>(0u, 5276u, _wgslsmith_clamp_u32(~4294967295u, u_input.c, _wgslsmith_mult_u32(arg_0.x, ~u_input.a))), _wgslsmith_div_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(arg_0.x, 6u)] | 4294967295u, ~96223u, ~global3[_wgslsmith_index_u32(50939u, 6u)]), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(0u, 6u)], 4294967295u)), vec3<u32>(83696u, u_input.c, u_input.a), select(vec3<u32>(1u, global3[_wgslsmith_index_u32(2680u, 6u)], 43925u), vec3<u32>(1u, 0u, 14666u), vec3<bool>(arg_1, true, arg_1))), ~vec3<u32>(u_input.c, 3250u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64629u, 6u)], 6u)], 6u)]))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> f32 {
    global4 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), arg_0), 29642u), firstTrailingBit(~vec3<u32>(17137u, 15553u, 30762u) ^ ~vec3<u32>(1u, arg_1, global3[_wgslsmith_index_u32(4294967295u, 6u)]))) ^ (u_input.c >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(5764u, 6u)], 0u, 4294967295u), func_2(vec2<u32>(42663u, u_input.c), true)) % 32u));
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, 1i), u_input.d);
    let var_1 = Struct_1(max(_wgslsmith_mult_vec4_u32(abs(min(vec4<u32>(46164u, arg_1, u_input.c, u_input.a), vec4<u32>(0u, 592u, 9227u, arg_0.x))), vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(arg_0, arg_0), ~1u, _wgslsmith_mult_u32(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 6u)], 6u)], 6u)]))), select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1, 4294967295u, 81028u), vec4<u32>(global3[_wgslsmith_index_u32(44948u, 6u)], 9557u, arg_1, 9081u)) & vec4<u32>(arg_0.x, u_input.a, 2223u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)]), select(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.c, 6u)], 0u, arg_1, 0u), vec4<u32>(4294967295u, 47883u, u_input.c, 20277u), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), 1u, all(vec3<bool>(!all(vec2<bool>(true, false)), false, all(vec4<bool>(true, false, true, true)))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(firstLeadingBit(u_input.c), ~16183u, _wgslsmith_dot_vec2_u32(vec2<u32>(24638u, u_input.c), vec2<u32>(arg_0.x, arg_1)), _wgslsmith_sub_u32(4294967295u, arg_1))), min(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 14965u, 59592u), vec4<u32>(u_input.a, 1276u, 4294967295u, 741u)) >> ((vec4<u32>(16715u, arg_0.x, 39301u, u_input.a) >> (vec4<u32>(0u, 36569u, 0u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), min(~vec4<u32>(69537u, arg_1, u_input.c, arg_1), countOneBits(vec4<u32>(arg_1, 48583u, 0u, arg_0.x))))));
    global3 = array<u32, 6>();
    let var_2 = u_input.b.xwz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f)), _wgslsmith_f_op_f32(-785f + _wgslsmith_f_op_f32(-467f + -2431f)), var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 76243u), vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(26732u, 6u)]) << (vec2<u32>(0u, 920u) % vec2<u32>(32u))), _wgslsmith_add_u32(max(u_input.a, 16646u), global3[_wgslsmith_index_u32(~1u, 6u)]), 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(596f - 422f) + _wgslsmith_f_op_f32(abs(-158f))) - _wgslsmith_f_op_f32(f32(-1f) * -1712f)) * 131f)));
    var var_1 = _wgslsmith_add_vec2_u32(abs(countOneBits(reverseBits(vec2<u32>(u_input.a, 28822u)))), vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_2(vec2<u32>(u_input.a, 42299u), true).x, 6u)], 6u)], 6u)], 4988u)) << (~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], ~u_input.c) % vec2<u32>(32u));
    let var_2 = select(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), any(vec3<bool>(true, false, true))), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), vec3<bool>(~var_1.x == ~global3[_wgslsmith_index_u32(u_input.a, 6u)], !select(false, false, true), true)), vec3<bool>(all(vec4<bool>(any(vec3<bool>(false, true, false)), true, false, true)), u_input.a == (u_input.c & _wgslsmith_div_u32(var_1.x, u_input.a)), true));
    let var_3 = global1[_wgslsmith_index_u32(~(~(~countOneBits(var_1.x))) | 33602u, 1u)];
    global3 = array<u32, 6>();
    let var_4 = true != (0i > _wgslsmith_clamp_i32(-(~(-2147483647i)), u_input.b.x, 1i));
    var_1 = max(vec2<u32>(_wgslsmith_mod_u32(~var_3.a, var_1.x), countOneBits(8767u)), var_3.c.xz) & (~var_3.c.yy & firstLeadingBit(var_3.c.xy));
    let var_5 = _wgslsmith_mult_vec4_u32(~firstLeadingBit(~vec4<u32>(4294967295u, var_1.x, var_1.x, 14952u)) >> (abs(vec4<u32>(~var_3.c.x, firstLeadingBit(global3[_wgslsmith_index_u32(var_1.x, 6u)]), ~var_1.x, u_input.c)) % vec4<u32>(32u)), (firstTrailingBit(~vec4<u32>(var_1.x, 1u, 13760u, global3[_wgslsmith_index_u32(u_input.c, 6u)])) ^ ~vec4<u32>(var_1.x, 1u, global3[_wgslsmith_index_u32(8588u, 6u)], 102851u)) << ((vec4<u32>(firstLeadingBit(u_input.c), 36239u, countOneBits(4294967295u), var_3.a) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global3[_wgslsmith_index_u32(12312u, 6u)], global3[_wgslsmith_index_u32(var_1.x, 6u)]), vec4<u32>(var_1.x, 2651u, var_3.c.x, 8004u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 1u, var_1.x, global3[_wgslsmith_index_u32(var_1.x, 6u)])) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_6 = i32(-1i) * -30143i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(84353u)) ^ var_5.x, var_3.a | countOneBits(var_3.c.x));
}

