struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(3718u, 1u, 4294967295u, 21374u), vec4<u32>(64920u, 0u, 4294967295u, 1743u), vec4<u32>(4294967295u, 4294967295u, 1003u, 34059u), vec4<u32>(0u, 1u, 4294967295u, 52735u), vec4<u32>(0u, 4294967295u, 4294967295u, 63479u), vec4<u32>(4294967295u, 51903u, 85756u, 1u), vec4<u32>(94663u, 4294967295u, 41505u, 29503u), vec4<u32>(1u, 72323u, 0u, 11800u), vec4<u32>(1u, 0u, 28105u, 4294967295u), vec4<u32>(19687u, 12198u, 1u, 40620u), vec4<u32>(4294967295u, 4593u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 8804u, 0u), vec4<u32>(22605u, 9241u, 0u, 51144u), vec4<u32>(1u, 0u, 4294967295u, 63592u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(8464u, 47781u, 61605u, 0u));

var<private> global1: array<u32, 8>;

var<private> global2: array<u32, 7> = array<u32, 7>(1u, 4294967295u, 0u, 41072u, 42550u, 0u, 57283u);

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: array<vec3<f32>, 5>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    global0 = array<vec4<u32>, 17>();
    let var_0 = Struct_2(arg_1, !all(!vec4<bool>(true, arg_1.c, false, global3.x)), arg_1, all(!vec3<bool>(false, true, select(false, true, true))), max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(1u, u_input.a, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 8u)], 7u)], 1u) >> (vec3<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 7u)], u_input.a, 4294967295u) % vec3<u32>(32u)), vec3<u32>(66531u, 49364u, global2[_wgslsmith_index_u32(0u, 7u)]) | vec3<u32>(2201u, 26574u, 4294967295u), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 7u)], 8u)], 8u)], global1[_wgslsmith_index_u32(106337u, 8u)]))), 17u)], ~global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 27422u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17406u, 8u)], 8u)], 8u)], 7u)], 1u)), 7u)]), 8u)], 17u)]));
    let var_1 = arg_1.a.x;
    let var_2 = ~vec3<u32>(firstLeadingBit(~4294967295u), ~_wgslsmith_div_u32(reverseBits(global2[_wgslsmith_index_u32(var_0.e.x, 7u)]), ~var_0.e.x), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~4294967295u), 7u)], 7u)]);
    let var_3 = arg_2.x != 2147483647i;
    return ~1i & arg_2.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec2<f32> {
    var var_0 = arg_1;
    global4 = array<vec3<f32>, 5>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-484f * _wgslsmith_f_op_f32(select(-270f, 370f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-923f)) * 240f))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_3(-(~vec2<i32>(10245i, 39076i)), vec4<i32>(arg_0, arg_0 << (0u % 32u), min(i32(-1i) * -2147483647i, ~12453i), ~_wgslsmith_mult_i32(arg_0, -44733i)), (-vec4<i32>(-2147483647i, arg_0, 7758i, arg_0) & vec4<i32>(-39163i, 47229i, arg_0, -2147483647i)) >> (global0[_wgslsmith_index_u32(1u, 17u)] % vec4<u32>(32u))), Struct_3(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(50461i, arg_0)), -vec4<i32>(-1318i, func_3(global3.x, Struct_1(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 5u)], 1722f, global3.x), vec4<i32>(63720i, -16353i, arg_0, arg_0), -321f), _wgslsmith_mod_i32(arg_0, 1i), 2147483647i), -reverseBits(vec4<i32>(-63287i, 75133i, arg_0, arg_0))), vec2<u32>(~(abs(29227u) | _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5081u, 8u)], 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)])), u_input.a), ~(~((vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 7u)]) << (vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 8u)]) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 7u)], 1u), vec2<u32>(u_input.a, 0u))))));
    var var_1 = select(vec4<bool>(!global3.x, global3.x, true, true), select(select(vec4<bool>(true, false, global3.x, true), vec4<bool>(!global3.x, true, global1[_wgslsmith_index_u32(0u, 8u)] > 4294967295u, !global3.x), true), vec4<bool>(false, !any(vec3<bool>(global3.x, global3.x, global3.x)), global3.x, !(global3.x | true)), select(vec4<bool>(global3.x, true, global3.x, true), !(!vec4<bool>(global3.x, global3.x, false, true)), !global3.x)), !(!select(vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(true, true, global3.x, global3.x), false)));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1648f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - -2014f)), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(940f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(178f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(101f, var_0.x), -614f)) * var_0.x), all(select(var_1.xww, var_1.wwz, !vec3<bool>(var_1.x, true, true))));
    return Struct_2(Struct_1(vec3<f32>(1502f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1478f) - _wgslsmith_f_op_f32(select(-243f, var_0.x, var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.x)))), var_0.x, ~firstTrailingBit(0u) < ~83321u), global3.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_vec2_f32(func_4(Struct_3(vec2<i32>(0i, -49014i), vec4<i32>(0i, -20272i, arg_0, arg_0), vec4<i32>(arg_0, -8348i, arg_0, 1i)), Struct_3(vec2<i32>(0i, arg_0), vec4<i32>(arg_0, arg_0, 0i, 14570i), vec4<i32>(0i, arg_0, 1i, 15404i)), vec2<u32>(1u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(0u, 7u)], u_input.a))).x)), _wgslsmith_div_f32(-1538f, 125f), -626f), var_2.a.x, select(all(vec2<bool>(false, false)), all(select(vec4<bool>(false, var_1.x, true, false), vec4<bool>(var_2.c, true, true, true), var_2.c)), var_2.c)), var_1.x, select(firstLeadingBit(global0[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 7u)]), 17u)]) ^ global0[_wgslsmith_index_u32(20222u, 17u)], firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(54470u, 17u)], global0[_wgslsmith_index_u32(18795u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)]), ~vec4<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 7u)], 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a, global2[_wgslsmith_index_u32(9519u, 7u)])), 17u)]), !select(vec4<bool>(false, var_1.x, global3.x, global3.x), !vec4<bool>(var_1.x, true, var_2.c, global3.x), !vec4<bool>(var_1.x, false, true, var_1.x))));
}

fn func_5(arg_0: Struct_2) -> i32 {
    global4 = array<vec3<f32>, 5>();
    let var_0 = Struct_3(-vec2<i32>(abs(~(-26057i)), _wgslsmith_div_i32(abs(0i), 2147483647i)), select(-vec4<i32>(-5320i, -29696i << (u_input.a % 32u), max(78070i, 0i), countOneBits(0i)), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-1i, 38503i, 0i, -3347i)), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(4285i, 1i, 24191i, -29983i)), vec4<i32>(1i, 1i, 1i, 1i)), ~vec4<i32>(20481i, -1i, -67048i, -2535i)), func_2(1i).c.c), abs(vec4<i32>(-2147483647i, 0i, 1i, 44473i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(50511u, 7u)], arg_0.e.x, u_input.a, arg_0.e.x), global0[_wgslsmith_index_u32(u_input.a, 17u)], arg_0.e) % vec4<u32>(32u))) & vec4<i32>(~(-1i), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, -1i), -abs(37690i), 1i));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(-var_0.c.x).a.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-796f, arg_0.a.b, arg_0.c.b))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(arg_0.c.a, vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, 1237f)), arg_0.c.a)) * _wgslsmith_f_op_vec3_f32(arg_0.a.a - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.a.x, arg_0.a.a.x, -729f), vec3<f32>(861f, -1544f, arg_0.a.a.x), vec3<bool>(global3.x, true, false)))))), arg_0.a.a.x, true);
    var var_2 = 816i;
    let var_3 = arg_0.c;
    return _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.c.x >> (arg_0.e.x % 32u), firstTrailingBit(var_0.b.x), _wgslsmith_add_i32(var_0.b.x, _wgslsmith_mult_i32(var_0.c.x, 2147483647i))), -25406i) >> (12843u % 32u);
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    var var_0 = abs(_wgslsmith_div_vec2_i32(arg_0.xz, vec2<i32>(-14560i, arg_0.x)) >> ((vec2<u32>(1u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)] & u_input.a, 8u)]) & ~_wgslsmith_sub_vec2_u32(vec2<u32>(261u, global1[_wgslsmith_index_u32(1u, 8u)]), vec2<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 7u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6909u, 7u)], 8u)], 7u)]))) % vec2<u32>(32u)));
    let var_1 = (1i <= (~max(-36280i, -2147483647i) << ((~4294967295u & (1u | global2[_wgslsmith_index_u32(1u, 7u)])) % 32u))) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1720f))) > 393f);
    global4 = array<vec3<f32>, 5>();
    global2 = array<u32, 7>();
    let var_2 = abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~(16577u << (global1[_wgslsmith_index_u32(u_input.a, 8u)] % 32u)), u_input.a), select(firstLeadingBit(min(vec3<u32>(9556u, global2[_wgslsmith_index_u32(1u, 7u)], 4294967295u), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 8u)], 29965u))), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(16719u, 8u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 7u)]), vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(0u, 8u)]))), !(!vec3<bool>(true, true, global3.x))), vec3<u32>(18935u, 7178u | global2[_wgslsmith_index_u32(3742u, 7u)], ~1u)));
    return _wgslsmith_div_i32(var_0.x, i32(-1i) * -func_5(func_2(-1i)));
}

fn func_6(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global0 = array<vec4<u32>, 17>();
    global0 = array<vec4<u32>, 17>();
    var var_0 = -(vec2<i32>(arg_3, _wgslsmith_clamp_i32(-1i, -16386i, arg_0) << (u_input.a % 32u)) ^ _wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, arg_3), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, arg_0), vec2<i32>(-64591i, 0i)), vec2<i32>(-1i) * -vec2<i32>(arg_3, -14885i)));
    let var_1 = countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(arg_3, arg_0, 0i, var_0.x), vec4<i32>(-1i, arg_3, 2147483647i, arg_0), true), firstTrailingBit(vec4<i32>(arg_0, 1i, var_0.x, arg_0))), vec4<i32>(var_0.x, var_0.x, arg_0, arg_0) ^ select(vec4<i32>(0i, arg_3, 2147483647i, arg_3), vec4<i32>(-24698i, var_0.x, -1i, 1i), arg_2.c)), _wgslsmith_mult_i32(~abs(-12304i), func_5(Struct_2(arg_2, arg_2.c, Struct_1(arg_2.a, arg_2.b, global3.x), false, vec4<u32>(1u, 26225u, global1[_wgslsmith_index_u32(u_input.a, 8u)], 42177u)))), 1i, ~(-28100i)));
    var var_2 = -(~7195i);
    return Struct_2(arg_2, false, func_2(-arg_3).c, true, _wgslsmith_mult_vec4_u32(abs(min(global0[_wgslsmith_index_u32(5705u, 17u)], vec4<u32>(8462u, 10917u, global1[_wgslsmith_index_u32(17848u, 8u)], u_input.a)) | global0[_wgslsmith_index_u32(24086u, 17u)]), ~_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], 0u, 47483u, global2[_wgslsmith_index_u32(u_input.a, 7u)]), select(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23185u, 8u)], 8u)], 7u)], 17u)], vec4<u32>(global1[_wgslsmith_index_u32(0u, 8u)], u_input.a, 52849u, 4846u), vec4<bool>(true, false, global3.x, global3.x)))));
}

fn func_7(arg_0: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.b, 696f), arg_0.c.a.xy))), _wgslsmith_f_op_vec2_f32(arg_0.c.a.zz + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b, -882f) - arg_0.a.a.xx)), false))));
    global1 = array<u32, 8>();
    global3 = !(!(!vec3<bool>(u_input.a <= arg_0.e.x, false, true)));
    var var_1 = select(select(!select(vec3<bool>(false, global3.x, arg_0.c.c), select(vec3<bool>(false, false, global3.x), vec3<bool>(global3.x, arg_0.b, arg_0.a.c), global3.x), true), !(!vec3<bool>(arg_0.b, global3.x, arg_0.a.c)), select(!(!vec3<bool>(global3.x, false, arg_0.a.c)), vec3<bool>(all(vec4<bool>(true, global3.x, false, true)), global3.x, true), select(vec3<bool>(false, false, arg_0.d), vec3<bool>(false, true, arg_0.d), vec3<bool>(true, true, true)))), vec3<bool>(global3.x, true, !(!arg_0.a.c || !arg_0.d)), !(!func_2(-40047i).c.c));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.e.x, 8u)], arg_0.e.x, global2[_wgslsmith_index_u32(arg_0.e.x, 7u)], arg_0.e.x), arg_0.e), firstLeadingBit(arg_0.e.x)), _wgslsmith_add_u32(59588u, arg_0.e.x) | 21498u), _wgslsmith_sub_vec3_u32(arg_0.e.xzw ^ reverseBits(arg_0.e.zwx), ~arg_0.e.ywx)), global2[_wgslsmith_index_u32(0u, 7u)]);
    return Struct_4(29513u, arg_0.a, ~(abs(vec2<i32>(1i, 1i)) >> (_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.e.xy, vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9618u, 8u)], 7u)], 7u)])), ~arg_0.e.wz) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-arg_0.a.a.x), select(!select(vec4<bool>(false, true, arg_0.a.c, true), !vec4<bool>(true, global3.x, false, true), var_1.x), vec4<bool>(func_6(_wgslsmith_div_i32(-8940i, -41650i), arg_0.c.a.zy, arg_0.a, firstLeadingBit(-8060i)).c.c, true, global3.x, var_1.x), vec4<bool>(!(arg_0.d & arg_0.d), true, !(global2[_wgslsmith_index_u32(0u, 7u)] < 69433u), !(!arg_0.d))));
}

fn func_8(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = vec2<i32>(arg_1.c.x, arg_1.c.x);
    var var_1 = Struct_3(var_0, _wgslsmith_sub_vec4_i32(min(_wgslsmith_mult_vec4_i32(-vec4<i32>(-51947i, var_0.x, arg_1.c.x, 40038i), max(vec4<i32>(var_0.x, -2147483647i, var_0.x, arg_1.c.x), vec4<i32>(-1i, arg_1.c.x, 81964i, -14804i))), vec4<i32>(var_0.x, arg_1.c.x, 1i, countOneBits(var_0.x))), firstTrailingBit(vec4<i32>(3072i, -54546i, -15579i, -1i)) & -(vec4<i32>(arg_1.c.x, -16286i, 0i, var_0.x) | vec4<i32>(3936i, 2147483647i, -2147483647i, 2147483647i))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(i32(-1i) * -1i, arg_1.c.x, 15217i, -49999i >> (1u % 32u))), -(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.x, arg_1.c.x, var_0.x), vec4<i32>(var_0.x, -3708i, var_0.x, 2004i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.c.x, arg_1.c.x, -2147483647i, -56350i), vec4<i32>(var_0.x, arg_1.c.x, arg_1.c.x, var_0.x)))));
    global4 = array<vec3<f32>, 5>();
    global1 = array<u32, 8>();
    var var_2 = -121f;
    return func_7(Struct_2(arg_1.b, any(!arg_1.e.wwz), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, arg_1.b.a.x, 540f)), _wgslsmith_f_op_f32(f32(-1f) * -210f), arg_0), any(vec3<bool>(false, func_7(Struct_2(Struct_1(arg_1.b.a, arg_1.d, arg_1.b.c), true, Struct_1(vec3<f32>(arg_1.b.a.x, -1087f, arg_1.b.a.x), arg_1.d, false), global3.x, vec4<u32>(1u, 1u, u_input.a, u_input.a))).e.x, true)), ~(~vec4<u32>(4294967295u, arg_1.a, 24746u, 1u) & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<u32>(u_input.a, arg_1.a, u_input.a)), 17u)]))).b;
}

fn func_9(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<bool> {
    global3 = select(vec3<bool>(!(!arg_0.x && true), true, true), vec3<bool>(false, arg_1.c, !global3.x), select(vec3<bool>(arg_1.c, true, true), func_7(func_6(func_5(Struct_2(Struct_1(vec3<f32>(arg_1.b, arg_1.b, -2272f), 264f, arg_0.x), global3.x, arg_1, true, vec4<u32>(0u, u_input.a, 24148u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17929u, 7u)], 7u)]))), vec2<f32>(arg_1.b, 1145f), func_6(12916i, vec2<f32>(1069f, arg_1.a.x), Struct_1(vec3<f32>(-2487f, -683f, arg_1.b), arg_1.a.x, false), -34129i).a, _wgslsmith_add_i32(-16758i, 2147483647i))).e.xyw, arg_1.c));
    global0 = array<vec4<u32>, 17>();
    let var_0 = func_6(_wgslsmith_div_i32(~func_5(Struct_2(arg_1, false, Struct_1(arg_1.a, -1864f, false), false, global0[_wgslsmith_index_u32(19930u, 17u)])), _wgslsmith_mult_i32(abs(0i), func_1(vec3<i32>(-1i, -2147483647i, 22262i)))) << (~36271u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), arg_1.a.x))), Struct_1(func_7(func_2(_wgslsmith_sub_i32(0i, 1i))).b.a, _wgslsmith_f_op_f32(872f - -443f), any(arg_0.ywz)), _wgslsmith_mod_i32(-2147483647i, abs((-17683i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 7u)], 7u)] % 32u)) ^ (14728i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] % 32u))))).c;
    var var_1 = abs(-((min(vec4<i32>(-2147483647i, 2147483647i, -1i, -2147483647i), vec4<i32>(-58014i, 5478i, -41911i, 1i)) >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 0u)), 17u)] % vec4<u32>(32u))) << (global0[_wgslsmith_index_u32(4294967295u, 17u)] % vec4<u32>(32u))));
    var var_2 = true;
    return arg_0.yyy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(max(~global1[_wgslsmith_index_u32(u_input.a, 8u)], 4294967295u | global2[_wgslsmith_index_u32(4294967295u, 7u)]) ^ 68021u, 5u)] - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 357f, -678f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.x);
    global3 = func_9(!select(!(!vec4<bool>(global3.x, global3.x, false, false)), !vec4<bool>(true, global3.x, var_0.c, var_0.c), (var_0.a.x <= 210f) && var_0.c), func_8(var_0.c | var_0.c, func_7(func_6(func_1(vec3<i32>(0i, 40169i, -18493i)), _wgslsmith_f_op_vec2_f32(var_0.a.zy - var_0.a.yx), Struct_1(vec3<f32>(var_0.b, -702f, var_0.b), var_0.a.x, false), ~0i))));
    let var_1 = func_6(i32(-1i) * -abs(func_1(vec3<i32>(1i, -1i, -64511i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1973f)), _wgslsmith_f_op_f32(floor(var_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.xz))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1879f))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(879f))), func_7(func_6(-2147483647i, vec2<f32>(var_0.b, var_0.a.x), var_0, 2461i)).b.a.x, _wgslsmith_f_op_f32(step(-1416f, _wgslsmith_f_op_f32(-var_0.b)))), func_7(func_6(1i, var_0.a.xx, Struct_1(var_0.a, var_0.a.x, false), 2147483647i)).b.b, false), -2147483647i).a;
    global1 = array<u32, 8>();
    var var_2 = ~firstLeadingBit(vec4<u32>(~firstLeadingBit(11926u), 74711u, global2[_wgslsmith_index_u32(u_input.a, 7u)], func_7(func_2(2147483647i)).a));
    global4 = array<vec3<f32>, 5>();
    var var_3 = 0u;
    let var_4 = ~var_2.wyz;
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(firstLeadingBit(-vec3<i32>(-2147483647i, 36277i, -1i)), vec3<i32>(~0i, func_1(vec3<i32>(-1i, -3925i, 1i)), ~1i))), _wgslsmith_f_op_f32(func_6(10382i, var_0.a.xx, func_7(func_2(12721i)).b, 44246i).a.b + var_1.b), ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 8u)], 1u), 8u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1924f, 1340f, var_0.a.x, var_1.b)), vec4<f32>(var_1.b, var_1.a.x, var_0.b, -324f), func_2(1i).a.c)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(687f, -912f, var_1.b, 523f) + vec4<f32>(-709f, var_0.b, 1118f, -721f)), vec4<f32>(var_0.a.x, 1013f, -1894f, var_0.a.x))))), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~max(~u_input.a, ~4294967295u)), 7u)], 8u)]);
}

