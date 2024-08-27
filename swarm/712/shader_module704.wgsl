struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: Struct_3 = Struct_3(vec3<f32>(-588f, 1214f, 143f), Struct_1(vec2<i32>(-9241i, 0i)));

var<private> global2: Struct_4 = Struct_4(vec2<u32>(45974u, 14868u), vec3<u32>(1u, 10274u, 46908u));

var<private> global3: array<vec2<bool>, 30>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = select(!(!vec2<bool>(arg_0.x, all(arg_0.zz))), global3[_wgslsmith_index_u32(global2.b.x >> (54628u % 32u), 30u)], !(!global0.x));
    var var_1 = _wgslsmith_div_u32(u_input.c, ~u_input.c << (~(~(~global2.a.x)) % 32u));
    var_1 = u_input.c;
    let var_2 = Struct_2(!(false & !all(vec4<bool>(true, true, false, false))), arg_1.x, Struct_1(_wgslsmith_mod_vec2_i32(global1.b.a, _wgslsmith_add_vec2_i32(vec2<i32>(global1.b.a.x, 2147483647i) << (global2.a % vec2<u32>(32u)), ~u_input.e.yz))), global1.b);
    var var_3 = !(!vec4<bool>(global0.x, true, true, var_2.a));
    return !vec4<bool>(false, !all(vec4<bool>(global0.x, true, false, arg_0.x)), global0.x && arg_0.x, 1u != ~_wgslsmith_mod_u32(4294967295u, global2.a.x));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = !(!(!select(vec4<bool>(global0.x, true, true, true), func_3(global0.zwy, vec4<f32>(-319f, -1000f, -1971f, arg_0), vec2<f32>(global1.a.x, arg_0)), select(vec4<bool>(global0.x, true, false, false), vec4<bool>(true, true, global0.x, true), vec4<bool>(true, false, global0.x, true)))));
    global2 = Struct_4(max(global2.a, global2.b.yy), ~global2.b);
    var var_0 = 2147483647i;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.c | 21914u, global2.a.x) >> (1u % 32u), ~4294967295u, u_input.c, ~global2.b.x), vec4<u32>(min(_wgslsmith_dot_vec2_u32(firstLeadingBit(global2.a), _wgslsmith_clamp_vec2_u32(global2.b.yy, global2.b.xz, global2.a)), max(1u & global2.b.x, reverseBits(global2.b.x))), ~firstLeadingBit(global2.b.x), max(0u, 39804u), 8927u >> (u_input.c % 32u)));
    var_0 = _wgslsmith_div_i32(firstTrailingBit(global1.b.a.x), 32061i);
    return global1.b;
}

fn func_1() -> u32 {
    var var_0 = global1.a.x;
    var var_1 = global0.x;
    var_0 = global1.a.x;
    let var_2 = ~(~(~global2.b.x));
    let var_3 = Struct_2(true, 821f, Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, -1i), -global1.b.a)), func_2(global1.a.x, 201f));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(global2.b, min(global2.b, vec3<u32>(global2.b.x, global2.a.x, global2.a.x))), u_input.a, u_input.c, func_1()), ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, global2.a.x, 0u, 4294967295u), vec4<u32>(4294967295u, global2.a.x, global2.b.x, 12862u) | vec4<u32>(1u, 4294967295u, 1u, 41714u))));
    var var_1 = Struct_4(_wgslsmith_add_vec2_u32(vec2<u32>(28831u, 4294967295u), firstTrailingBit(global2.b.yy)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(~u_input.c, ~27161u, 8406u), abs(global2.b >> (global2.b % vec3<u32>(32u)))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(29207u, u_input.c, 28076u), vec3<u32>(7736u, 6246u, 41863u)), _wgslsmith_clamp_vec3_u32(var_0.zwy, global2.b, vec3<u32>(global2.a.x, 4294967295u, 27678u)), false) | _wgslsmith_add_vec3_u32(select(vec3<u32>(global2.a.x, var_0.x, 4294967295u), vec3<u32>(var_0.x, u_input.a, global2.a.x), global0.zzz), ~global2.b)));
    var_1 = Struct_4(~(~vec2<u32>(max(58911u, var_0.x), 0u)), firstLeadingBit(~global2.b));
    let var_2 = _wgslsmith_add_vec3_u32(global2.b, global2.b);
    var_1 = Struct_4(vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, func_1())) & (var_2.yy ^ _wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.a, 8537u)), vec2<u32>(u_input.c, var_1.b.x))), var_1.b);
    global2 = Struct_4(abs(~((var_0.xy & vec2<u32>(global2.a.x, 8259u)) << (global2.a % vec2<u32>(32u)))), firstLeadingBit(~firstTrailingBit(~vec3<u32>(90386u, u_input.c, global2.b.x))));
    var_1 = Struct_4(~abs(~select(vec2<u32>(u_input.c, 59771u), var_1.a, true)), _wgslsmith_sub_vec3_u32(var_0.yzy, ~var_2) | vec3<u32>(var_1.b.x, ~var_0.x, 2013u));
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(-global1.a)), Struct_1(u_input.e.xy));
    var var_3 = Struct_4(countOneBits(abs(global2.a)), vec3<u32>(5158u, var_1.b.x, (1u >> ((var_0.x | var_0.x) % 32u)) | var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~(~vec4<u32>(3225u, 22538u, 4446u, var_0.x)))), 1u, firstTrailingBit(18971i), abs(select(_wgslsmith_add_vec3_i32(u_input.e.zwx, vec3<i32>(-2147483647i, -2147483647i, u_input.e.x)), _wgslsmith_mult_vec3_i32(u_input.e.zwy, vec3<i32>(-2147483647i, 2147483647i, 2147483647i)), global0.x)) << ((select(vec3<u32>(0u, global2.a.x, 68117u), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 5743u, var_2.x), var_1.b), vec3<bool>(false, false, true)) | ~var_1.b) % vec3<u32>(32u)));
}

