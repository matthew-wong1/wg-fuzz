struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(i32(-2147483648)), Struct_1(49843i), Struct_1(-6728i), Struct_1(-6137i));

var<private> global1: f32 = -1807f;

var<private> global2: i32 = 43010i;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_1, 4>();
    let var_0 = vec4<i32>(min(u_input.a.x, countOneBits(i32(-1i) * -29131i)), -u_input.b.x, max(u_input.b.x, _wgslsmith_dot_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 27947i, 53276i), vec3<i32>(u_input.b.x, u_input.a.x, 2147483647i)), -vec3<i32>(u_input.a.x, u_input.a.x, 13248i)), abs(~vec3<i32>(u_input.b.x, 30691i, u_input.a.x)))), u_input.b.x);
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 57515u), ~28205u, ~4125u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(countOneBits(abs(4294967295u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(2287u, 0u, 74936u), vec3<u32>(4294967295u, 37464u, 0u)), 1u), 1u)) >= reverseBits(1u);
    var var_2 = select(~select(vec4<u32>(abs(47546u), ~1u, firstLeadingBit(4294967295u), _wgslsmith_mod_u32(1u, 4294967295u)), vec4<u32>(reverseBits(67579u), _wgslsmith_clamp_u32(0u, 4294967295u, 13945u), ~4294967295u, 1461u), vec4<bool>(true, true, true, true)), max(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~min(0u, 4294967295u), 1u, reverseBits(max(1u, 16121u)), _wgslsmith_div_u32(38229u, 1u))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, -u_input.a.x <= -1i)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1013f, 1343f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-537f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) + _wgslsmith_f_op_f32(min(-279f, 1432f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1185f + _wgslsmith_div_f32(1287f, 871f))))), _wgslsmith_f_op_f32(f32(-1f) * -1995f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-815f + -1000f) + _wgslsmith_f_op_f32(min(-546f, 1136f))))))));
}

fn func_2() -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(select(~_wgslsmith_clamp_u32(1u, 1u, countOneBits(60613u)), _wgslsmith_mod_u32(abs(54237u), ~29772u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), ~vec3<u32>(1u, 4294967295u, 16584u)), true) << (countOneBits(1u) % 32u), 4u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -831f);
    global0 = array<Struct_1, 4>();
    let var_2 = ~(~0u) << (countOneBits(1u) % 32u);
    let var_3 = Struct_2(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), -1i >= u_input.a.x), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3()))), false);
    return Struct_3(Struct_2(select(!vec2<bool>(true, var_3.c), select(vec2<bool>(true, var_3.a.x), var_3.a, vec2<bool>(var_3.c, var_3.a.x)), any(!var_3.a)), _wgslsmith_f_op_vec4_f32(-var_3.b), true), u_input.b.x, _wgslsmith_mod_vec3_i32(max(firstTrailingBit(vec3<i32>(1i, -2147483647i, u_input.a.x)), min(vec3<i32>(var_0.a, -2147483647i, var_0.a), vec3<i32>(var_0.a, var_0.a, 30663i)) ^ vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), -(~(~vec3<i32>(var_0.a, var_0.a, u_input.a.x)))), var_3, Struct_1(var_0.a));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1876f);
    var var_0 = arg_1.e;
    let var_1 = arg_1.a.a.x;
    let var_2 = -(var_0.a ^ ~_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(-1i, -1i)));
    var var_3 = global0[_wgslsmith_index_u32(~1u, 4u)];
    return ~vec2<u32>(1u, ~(~25635u));
}

fn func_1() -> Struct_1 {
    global2 = u_input.a.x;
    global1 = 790f;
    let var_0 = vec2<u32>(_wgslsmith_add_u32(~1u, 1u) & ~_wgslsmith_clamp_u32(4294967295u, 0u, 13056u), ~4294967295u) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), func_4(firstLeadingBit(vec2<i32>(2692i, u_input.a.x)), func_2())) % vec2<u32>(32u));
    var var_1 = ~(-firstLeadingBit(_wgslsmith_sub_i32(u_input.b.x, u_input.a.x & 2147483647i)));
    global1 = func_2().d.b.x;
    return Struct_1(min(-((u_input.b.x ^ -64477i) << (4294967295u % 32u)), firstTrailingBit(-14862i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2().d;
    global1 = _wgslsmith_f_op_f32(-var_1.b.x);
    var var_2 = Struct_1(firstLeadingBit(-30988i & (var_0.a | ~2147483647i)));
    var var_3 = -_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.a, var_2.a, 1i), countOneBits(vec3<i32>(-23750i, 2147483647i & var_0.a, -1i)));
    var var_4 = 29547i;
    var var_5 = max(vec2<u32>(_wgslsmith_mod_u32(1u, 1u), ~_wgslsmith_add_u32(0u, 34677u)), abs(~(~max(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 12638u)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2.a, var_3.x), select(min(vec3<i32>(var_0.a, var_3.x, var_2.a) & firstTrailingBit(vec3<i32>(var_3.x, -18207i, var_0.a)), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(39041i, var_3.x, var_0.a), vec3<i32>(var_3.x, var_2.a, -1i), vec3<i32>(var_3.x, -1i, 2147483647i)))), vec3<i32>(_wgslsmith_sub_i32(var_0.a, 0i) & u_input.b.x, 19537i, -1i), !(!vec3<bool>(var_1.a.x, true, true))), 592f);
}

