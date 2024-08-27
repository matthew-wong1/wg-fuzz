struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(937f, vec2<i32>(4718i, 1i)), Struct_2(270f, vec2<i32>(0i, 44576i)));

var<private> global2: array<Struct_2, 23>;

var<private> global3: array<vec4<u32>, 29>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global0 = array<vec2<u32>, 5>();
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(117614u, 4294967295u), _wgslsmith_clamp_u32(0u, 32950u, 77542u)), ~_wgslsmith_mod_u32(92672u, 31586u)) & firstTrailingBit(~abs(abs(11408u)));
    var var_1 = Struct_1(select(vec3<bool>(any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(floor(1000f)) <= _wgslsmith_f_op_f32(round(1243f)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true)), vec3<bool>(!all(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(-155f + 1000f) > _wgslsmith_f_op_f32(floor(-832f)), -64245i <= (4387i & u_input.a))), _wgslsmith_div_i32(~_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, 1i), 2147483647i), ~min(u_input.a ^ -3775i, -61067i)), ~29439u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1735f, 790f)) + 792f))), -_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 17362i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-5344i, u_input.a, -25695i, u_input.a), vec4<i32>(36415i, 1i, u_input.a, -770i)) << (~vec4<u32>(57811u, 0u, 4294967295u, 32393u) % vec4<u32>(32u))));
    var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(~19451u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 91435u), vec3<u32>(var_1.c, 48050u, var_1.c)), var_1.c), ~abs(vec3<u32>(0u, 0u, var_1.c)), var_1.a), abs(vec3<u32>(var_1.c, ~4294967295u, select(20816u, var_1.c, var_1.a.x)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32((vec2<u32>(var_1.c, 64784u) | global0[_wgslsmith_index_u32(var_1.c, 5u)]) ^ select(vec2<u32>(39558u, var_1.c), global0[_wgslsmith_index_u32(31591u, 5u)], var_1.a.x), ~vec2<u32>(4294967295u, var_1.c)), ~countOneBits(~91420u)));
    let var_2 = vec2<u32>(~(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(87245u, var_1.c), global0[_wgslsmith_index_u32(0u, 5u)])) & 1u), _wgslsmith_mod_u32(4294967295u, 1360u) | var_1.c);
    return var_1.a.x;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_2, 23>();
    global2 = array<Struct_2, 23>();
    var var_0 = Struct_1(select(select(vec3<bool>(func_3(), any(vec4<bool>(false, true, false, false)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), u_input.a <= -1i), true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), select(true, false, false)), true), -56118i, 1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -861f) - _wgslsmith_f_op_f32(step(1000f, -263f))))))), abs(-vec4<i32>(~u_input.a, 19198i, 2147483647i, 2147483647i)));
    var_0 = Struct_1(!select(select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.a.x, true, true), !var_0.a.x), !select(vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.a, true), var_0.a), 0i << (var_0.c % 32u), var_0.c, _wgslsmith_f_op_f32(-250f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f) * -1000f))), select(~var_0.e, -select(vec4<i32>(2147483647i, 12163i, 9367i, u_input.a), var_0.e >> (vec4<u32>(var_0.c, 44441u, var_0.c, var_0.c) % vec4<u32>(32u)), var_0.a.x), var_0.a.x));
    var var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(~var_0.c, 12632u)), 2u)];
    return Struct_1(vec3<bool>(var_0.a.x, !func_3(), var_0.a.x), var_0.e.x, 4294967295u, -1000f, vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, -17777i, -3962i)), firstLeadingBit(var_0.e.xxx), vec3<i32>(var_0.e.x, 1i, u_input.a)), vec3<i32>(i32(-1i) * -19254i, u_input.a << (var_0.c % 32u), i32(-1i) * -47413i)), -_wgslsmith_sub_i32(17621i, -4990i), _wgslsmith_mod_i32(~0i, 2147483647i), var_1.b.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(!(!(!vec3<bool>(arg_0.x, true, true))), i32(-1i) * -13558i, ~arg_2.c, -162f, ~vec4<i32>(u_input.a, u_input.a, ~arg_2.e.x, u_input.a) ^ arg_2.e);
    var var_1 = func_2();
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global3[_wgslsmith_index_u32(0u, 29u)];
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(455f - _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), vec4<bool>(false, false, true, true), Struct_1(vec3<bool>(false, true, false), u_input.a, var_0.x, 1000f, vec4<i32>(u_input.a, -8531i, -2147483647i, -45476i))))))), vec2<i32>(u_input.a, 0i));
    global3 = array<vec4<u32>, 29>();
    global2 = array<Struct_2, 23>();
    let var_2 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(min(var_0.yxx & vec3<u32>(19379u, 70028u, var_0.x), abs(var_0.wxx))), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.a - 1084f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(597f)), 569f, var_1.a >= -481f)))));
}

