struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-48781i, -30589i, -1i, 40493i)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(19904i, 1i, i32(-2147483648), -3562i)));

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(12894i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, -1049i, 1i), vec3<i32>(26388i, -1i, -1i), vec3<i32>(2147483647i, -53745i, 9787i), vec3<i32>(-25616i, 5627i, 0i), vec3<i32>(-5163i, -93108i, 0i), vec3<i32>(9795i, -1i, 37539i), vec3<i32>(-31986i, 0i, 0i), vec3<i32>(-16330i, 1i, 0i), vec3<i32>(1i, i32(-2147483648), 23947i), vec3<i32>(-10418i, 2147483647i, 8607i), vec3<i32>(-1i, 0i, -182i), vec3<i32>(-43257i, 39247i, 12063i), vec3<i32>(-1i, 68570i, -16245i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(1i, -8849i, 0i), vec3<i32>(47384i, -13552i, 2147483647i), vec3<i32>(-1i, -15564i, 2147483647i), vec3<i32>(-1i, 3886i, 39835i), vec3<i32>(0i, 13486i, 5485i));

var<private> global3: u32;

var<private> global4: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1000f, 2214f, -1000f, 707f), vec4<f32>(-1543f, -492f, 384f, -217f), vec4<f32>(117f, 1115f, 395f, 3125f), vec4<f32>(816f, -1015f, -1133f, -626f), vec4<f32>(501f, 1656f, -1272f, 1292f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = Struct_2(global0.a, Struct_1(!select(!global0.a.a, select(global0.b.a, global0.a.a, global0.b.a.x), vec4<bool>(false, true, global0.a.a.x, true)), vec4<i32>(firstLeadingBit(global0.a.b.x), 0i, -3148i, 11083i) << (~(vec4<u32>(u_input.c, 4294967295u, 11963u, 23966u) | vec4<u32>(u_input.c, u_input.a.x, u_input.b, 46365u)) % vec4<u32>(32u))));
    global2 = array<vec3<i32>, 20>();
    global3 = 67064u;
    let var_1 = var_0.a;
    var var_2 = global1[_wgslsmith_index_u32(55881u, 12u)];
    return false;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0.x;
    var var_1 = vec3<i32>(1i, global0.b.b.x, global0.b.b.x);
    global2 = array<vec3<i32>, 20>();
    var var_2 = func_3();
    global2 = array<vec3<i32>, 20>();
    return Struct_1(global0.a.a, vec4<i32>(global0.a.b.x, ((global0.a.b.x | global0.a.b.x) >> (u_input.a.x % 32u)) << (_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), u_input.a) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(0u, 20u)] >> (vec3<u32>(arg_1, u_input.c, arg_1) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(u_input.c, 20u)] ^ vec3<i32>(-9471i, -51673i, -2147483647i)), -(vec3<i32>(global0.b.b.x, var_1.x, global0.a.b.x) >> (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u)))), ~global0.a.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = !all(vec2<bool>(false, arg_0.a.x || (arg_2 >= -15308i)));
    var var_1 = global0.b.a;
    var var_2 = reverseBits(_wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b));
    var_2 = arg_0.b.x;
    let var_3 = abs(min(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 40232u, u_input.a.x), vec3<u32>(51445u, u_input.b, u_input.a.x)), ~vec3<u32>(u_input.c, u_input.c, u_input.a.x), global0.a.a.x), vec3<u32>(abs(4294967295u), 1u, 1u))) << (vec3<u32>(u_input.c, u_input.a.x, firstTrailingBit(_wgslsmith_sub_u32(4294967295u, u_input.c) >> ((u_input.c << (0u % 32u)) % 32u))) % vec3<u32>(32u));
    return true;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-397f, -173f), -268f));
    var var_1 = select(select(global0.b.a, vec4<bool>(all(select(vec4<bool>(false, false, true, global0.a.a.x), vec4<bool>(false, global0.b.a.x, false, true), global0.a.a)), true, false, select(false, !global0.a.a.x, !global0.a.a.x)), true), global0.b.a, func_4(func_2(select(global0.a.a.zw, vec2<bool>(false, false), vec2<bool>(false, global0.a.a.x)), arg_0), Struct_2(func_2(vec2<bool>(global0.b.a.x, false), ~u_input.a.x), global1[_wgslsmith_index_u32(1u, 12u)]), 40565i, all(vec4<bool>(any(global0.a.a.xxw), all(global0.b.a), global0.a.a.x, global0.b.a.x))));
    var var_2 = -(~(~vec4<i32>(2147483647i, 58306i, global0.a.b.x, firstTrailingBit(global0.a.b.x))));
    var_2 = vec4<i32>(reverseBits(2147483647i), global0.b.b.x, -20596i, abs(var_2.x));
    let var_3 = -vec4<i32>(var_2.x << (_wgslsmith_mult_u32(4294967295u, 1u) % 32u), 1i, -41133i, var_2.x);
    return Struct_2(global1[_wgslsmith_index_u32(~60381u, 12u)], func_2(vec2<bool>(!all(global0.b.a), func_2(var_1.wz, u_input.c).a.x & true), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<u32>(~122808u, reverseBits(8456u)));
    let var_1 = u_input.a.x;
    var var_2 = global0.a.a;
    let var_3 = global0.a;
    var_0 = u_input.a;
    var var_4 = func_1(~(26175u & ~_wgslsmith_clamp_u32(4730u, var_1, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(-abs(-2147483647i) ^ var_3.b.x), _wgslsmith_add_i32((i32(-1i) * -var_3.b.x) & 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(6941i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.x, var_3.b.x, -41916i), global2[_wgslsmith_index_u32(u_input.b, 20u)])), -(vec2<i32>(1i, var_4.b.b.x) ^ vec2<i32>(global0.a.b.x, var_4.a.b.x)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 22114u, u_input.a.x), vec3<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1114u, 0u), vec2<u32>(40853u, var_0.x)), reverseBits(u_input.c)), abs(countOneBits(vec3<u32>(23125u, u_input.c, 0u)))) | _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(22283u, var_1, var_0.x), vec3<u32>(4294967295u, var_1, var_0.x), vec3<u32>(0u, 4294967295u, var_0.x)) | _wgslsmith_add_vec3_u32(vec3<u32>(62862u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, u_input.a.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 10949u, 36555u), vec3<u32>(48131u, var_1, u_input.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-309f, 358f), vec2<f32>(246f, -1167f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2475f, 775f) - vec2<f32>(894f, -312f)), true))))));
}

