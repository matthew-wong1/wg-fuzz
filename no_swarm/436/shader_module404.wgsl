struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(28122u, 0u, 1u, 47226u), vec4<u32>(20161u, 10589u, 4294967295u, 15298u), vec4<u32>(47591u, 39148u, 1u, 0u), vec4<u32>(31566u, 28386u, 14142u, 1226u), vec4<u32>(113636u, 4294967295u, 55440u, 42783u), vec4<u32>(13805u, 8454u, 33057u, 0u), vec4<u32>(40073u, 6804u, 16789u, 1u), vec4<u32>(1u, 1u, 94398u, 60922u), vec4<u32>(4294967295u, 4294967295u, 46096u, 1u), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(1u, 89626u, 71321u, 1u), vec4<u32>(112260u, 0u, 0u, 4294967295u), vec4<u32>(81410u, 1u, 48400u, 4294967295u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(1u, 0u, 0u, 0u));

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_3(vec2<f32>(-150f, -152f)), Struct_1(i32(-2147483648), vec3<bool>(false, false, true)), Struct_3(vec2<f32>(1604f, 1674f))));

var<private> global3: array<u32, 18> = array<u32, 18>(0u, 37177u, 1704u, 15183u, 16656u, 0u, 8833u, 63706u, 4294967295u, 1u, 0u, 23020u, 4294967295u, 68262u, 31142u, 33194u, 4294967295u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1))), 788f);
    global1 = array<vec4<u32>, 15>();
    let var_1 = u_input.b.x;
    global0 = reverseBits(-arg_3.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f - arg_1));
    return arg_1;
}

fn func_2() -> Struct_5 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a.x, 1u), -1419f, vec2<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], 17147u), vec3<i32>(3912i, -43887i, 4131i)))))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-919f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1634f))))), 0u <= u_input.a.x, true, all(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, reverseBits(17969u) != ~u_input.c.x)));
    let var_1 = Struct_1(9679i, select(!(!vec3<bool>(true, false, var_0.x)), select(vec3<bool>(true, true, false), select(var_0.yzy, var_0.wzx, vec3<bool>(var_0.x, var_0.x, false)), var_0.x | var_0.x), select(vec3<bool>(true, -43573i <= u_input.b.x, any(vec2<bool>(false, var_0.x))), !vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, !var_0.x, false))));
    global2 = array<Struct_4, 1>();
    let var_2 = firstLeadingBit((_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.c, u_input.a), vec2<u32>(4294967295u, 4294967295u)) | _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(36270u, 18u)]))) >> (reverseBits(~u_input.a.x) % 32u));
    global0 = firstLeadingBit(1i);
    return Struct_5(min(_wgslsmith_mod_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 18u)], 18u)], var_2, 49844u), min(vec3<u32>(9672u, var_2, global3[_wgslsmith_index_u32(1u, 18u)]), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23294u, 18u)], 18u)], 1u, 43254u))), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.c), var_2, var_2)) >> ((~(vec3<u32>(65234u, 1u, var_2) ^ vec3<u32>(var_2, u_input.a.x, global3[_wgslsmith_index_u32(55085u, 18u)])) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 41457u, u_input.c.x), vec3<u32>(global3[_wgslsmith_index_u32(13461u, 18u)], u_input.c.x, 111267u)), var_2 << (var_2 % 32u), ~95800u)) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(1u, 1u)], Struct_1(~_wgslsmith_add_i32(var_1.a << (6975u % 32u), i32(-1i) * -33106i), var_1.b));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> Struct_5 {
    let var_0 = u_input.a.x;
    var var_1 = false;
    var_1 = all(vec2<bool>(true & (arg_0.b.b.b.x | true), all(!(!vec4<bool>(arg_0.b.b.b.x, arg_0.b.b.b.x, arg_0.b.b.b.x, arg_0.c.b.x)))));
    let var_2 = arg_0.b.b.b.x;
    global1 = array<vec4<u32>, 15>();
    return arg_0;
}

fn func_1() -> Struct_5 {
    let var_0 = -1111f;
    return func_4(func_2(), -551f, _wgslsmith_f_op_f32(trunc(1000f)));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: u32) -> vec4<i32> {
    let var_0 = true;
    global0 = -_wgslsmith_mod_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.b.a, arg_0.b.b.a, 16324i, u_input.b.x), vec4<i32>(u_input.b.x, 0i, u_input.b.x, 38030i))), 1i);
    global1 = array<vec4<u32>, 15>();
    var var_1 = arg_0.b.c;
    global1 = array<vec4<u32>, 15>();
    return ~countOneBits(-_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(arg_0.c.a, 1i, 0i, -6582i)), vec4<i32>(u_input.b.x, 0i, 5298i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = -func_5(func_1(), func_1().c.b.xy, ~countOneBits(max(46379u, u_input.c.x)));
    global2 = array<Struct_4, 1>();
    let var_2 = ~_wgslsmith_div_u32(func_1().a.x, 0u);
    let var_3 = select(func_1().c.b.zy, func_4(Struct_5(min(firstTrailingBit(vec3<u32>(0u, 33370u, var_2)), vec3<u32>(0u, var_2, 1u)), Struct_4(Struct_3(vec2<f32>(-554f, 1492f)), Struct_1(-24340i, vec3<bool>(false, false, true)), func_4(Struct_5(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19932u, 18u)], 18u)], var_2, var_2), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 1u)], Struct_1(var_0.x, vec3<bool>(true, false, true))), 1558f, 1018f).b.c), func_2().b.b), 384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(608f + 854f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1357f), -1705f)))).c.b.yz, func_1().c.b.zy);
    global0 = var_1.x;
    global2 = array<Struct_4, 1>();
    global0 = ~firstTrailingBit(~var_1.x ^ _wgslsmith_div_i32(reverseBits(var_0.x), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_1.x, 1889i, u_input.b.x))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(338f, var_4.b.c.a.x, -343f), vec3<f32>(var_4.b.c.a.x, -950f, var_4.b.a.a.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.b.c.a.x, var_4.b.c.a.x, var_4.b.c.a.x), vec3<f32>(-1000f, var_4.b.a.a.x, 659f)))))))));
}

