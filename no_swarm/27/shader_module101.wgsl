struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-213f, 833f, 714f), vec3<f32>(768f, -1932f, 280f), vec3<f32>(-2096f, 697f, -1706f), vec3<f32>(-408f, -1352f, 1341f), vec3<f32>(1362f, -748f, -105f), vec3<f32>(-1276f, -1076f, -615f), vec3<f32>(384f, -454f, -994f), vec3<f32>(-1748f, -732f, -852f), vec3<f32>(1195f, 1000f, 1000f), vec3<f32>(927f, 249f, 357f), vec3<f32>(135f, -1505f, -224f), vec3<f32>(368f, -1000f, -678f), vec3<f32>(409f, -856f, 352f), vec3<f32>(1722f, -1441f, -172f), vec3<f32>(-106f, -887f, -1402f), vec3<f32>(-1000f, 259f, 178f), vec3<f32>(-1408f, 728f, -258f), vec3<f32>(-2090f, 1000f, 811f), vec3<f32>(-318f, 1069f, 843f), vec3<f32>(1586f, -318f, -1349f), vec3<f32>(-649f, -1735f, 336f), vec3<f32>(1397f, 1552f, -1561f), vec3<f32>(-393f, -1000f, -1797f));

var<private> global2: vec4<f32>;

var<private> global3: u32;

var<private> global4: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(false, 56281u), Struct_2(true, 18240u), Struct_2(true, 13697u), Struct_2(true, 86160u), Struct_2(false, 4745u), Struct_2(false, 1u), Struct_2(false, 45776u), Struct_2(true, 1412u), Struct_2(false, 47838u), Struct_2(true, 0u), Struct_2(true, 0u), Struct_2(true, 16511u), Struct_2(true, 1u), Struct_2(false, 4294967295u), Struct_2(false, 4294967295u), Struct_2(false, 88630u), Struct_2(true, 4294967295u), Struct_2(true, 20481u), Struct_2(true, 39716u), Struct_2(false, 58864u), Struct_2(false, 13830u), Struct_2(false, 40133u), Struct_2(true, 18370u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    global0 = Struct_1(vec3<i32>(i32(-1i) * -(~u_input.a), 2147483647i, -90419i), global0.b, !global0.c);
    let var_0 = Struct_4(select(!(!(!vec2<bool>(arg_1, arg_1))), vec2<bool>(global2.x != _wgslsmith_f_op_f32(f32(-1f) * -318f), arg_1), true));
    var var_1 = global4[_wgslsmith_index_u32(~global0.b, 23u)];
    global1 = array<vec3<f32>, 23>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.xy * _wgslsmith_f_op_vec2_f32(select(global2.xz, global2.wy, var_0.a))) * _wgslsmith_f_op_vec2_f32(exp2(global2.yx))), global2.wx)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + vec2<f32>(global2.x, -764f)))) + vec2<f32>(684f, -861f)))));
    return ~(~arg_0.x);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_add_u32(68074u >> (0u % 32u), ~(~func_3(select(vec4<u32>(global0.b, global0.b, 57266u, 1u), vec4<u32>(global0.b, global0.b, 72431u, global0.b), global0.c.x), any(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true)))));
    let var_1 = Struct_1(select(_wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(u_input.a, u_input.a, -15159i)) << (countOneBits(~vec3<u32>(26574u, global0.b, 76758u)) % vec3<u32>(32u)), ~vec3<i32>(0i, u_input.a, global0.a.x), all(vec3<bool>(any(vec4<bool>(true, false, true, global0.c.x)), global0.c.x, select(false, true, global0.c.x)))), select(select(_wgslsmith_clamp_u32(~1u, 12801u, 4294967295u), select(firstTrailingBit(global0.b), _wgslsmith_mod_u32(4294967295u, global0.b), 9054u > global0.b), ~1u != (0u ^ global0.b)), 16684u, false != all(vec3<bool>(true, global0.c.x, global0.c.x))), select(vec4<bool>(true, !global0.c.x, global0.c.x, true), global0.c, global0.c));
    global0 = var_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, -1000f, false))))))));
    var var_3 = Struct_2(1i == ~u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(max(vec3<u32>(var_1.b, var_1.b, 1u), vec3<u32>(var_1.b, 11626u, 4294967295u))), (vec3<u32>(32639u, 1u, 13331u) | vec3<u32>(global0.b, 1u, var_1.b)) | ~vec3<u32>(var_1.b, var_1.b, var_0)), vec3<u32>(727u & var_1.b, min(~23029u, ~60046u), 4294967295u)));
    return 114398u;
}

fn func_1() -> u32 {
    let var_0 = global0.b;
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b, abs(_wgslsmith_mult_u32(global0.b, global0.b)), 63596u, func_2()), _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.b, 4294967295u, 10702u), vec4<u32>(global0.b, 60494u, 64301u, 4294967295u))), vec4<u32>(reverseBits(global0.b), ~global0.b, global0.b, global0.b), ~vec4<u32>(1u, 46295u, global0.b, 0u) & (vec4<u32>(global0.b, global0.b, 2018u, global0.b) | vec4<u32>(8183u, global0.b, 0u, global0.b)))) >> (~vec4<u32>(_wgslsmith_div_u32(global0.b << (4294967295u % 32u), ~global0.b), select(min(30990u, 4294967295u), abs(global0.b), global2.x <= 218f), global0.b, ~16981u) % vec4<u32>(32u));
    global3 = ~(~firstTrailingBit(reverseBits(select(var_1.x, var_1.x, true))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), -1000f)));
    var var_3 = vec4<u32>(~0u, 1u, countOneBits(~(~(var_1.x ^ var_1.x))), ~56855u);
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1() & 1u;
    let var_1 = global0.c.ww;
    let var_2 = global2.zy;
    var var_3 = vec4<i32>(global0.a.x, -global0.a.x, 19728i, global0.a.x);
    let var_4 = ~_wgslsmith_sub_i32(-u_input.a, global0.a.x) > -(global0.a.x & -2147483647i);
    global4 = array<Struct_2, 23>();
    let var_5 = Struct_4(select(vec2<bool>(all(vec3<bool>(false, true, var_4)), true), vec2<bool>(true, false), all(vec2<bool>(true, any(global0.c.zy)))));
    var var_6 = Struct_1(-firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_3.www, vec3<i32>(0i, global0.a.x, -2147483647i)), vec3<i32>(u_input.a, var_3.x, 1i) << (vec3<u32>(var_0, var_0, global0.b) % vec3<u32>(32u)))), 0u, select(!global0.c, global0.c, true));
    global3 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, var_2.x, 1383f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2359f, var_2.x, 1258f)))))), firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(var_6.b, global0.b)) << (~(~vec2<u32>(1u, 5577u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(212f, var_2.x, -1000f))) * _wgslsmith_f_op_vec3_f32(-global2.ywx)), _wgslsmith_f_op_vec3_f32(global2.wyz - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(27705u, 23u)])))), var_6.c.xxw)), global2.x);
}

