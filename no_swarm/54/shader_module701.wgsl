struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = arg_0.x >> ((max(arg_0.x, _wgslsmith_div_u32(arg_0.x, _wgslsmith_clamp_u32(u_input.a, arg_0.x, arg_0.x))) >> ((4294967295u ^ _wgslsmith_dot_vec3_u32(arg_0, abs(arg_0))) % 32u)) % 32u);
    let var_1 = ~min(_wgslsmith_add_vec4_u32(max(firstTrailingBit(vec4<u32>(u_input.a, var_0, 36042u, u_input.a)), vec4<u32>(4294967295u, arg_0.x, u_input.a, arg_0.x)), ~(~vec4<u32>(14256u, 44542u, 5687u, 4294967295u))), select(min(select(vec4<u32>(1u, 2229u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, 0u, 12220u), vec4<bool>(true, global2.x, global1.a, global1.a)), select(vec4<u32>(var_0, 13287u, 13631u, arg_0.x), vec4<u32>(87531u, 4294967295u, 1u, 118514u), global1.a)), reverseBits(firstTrailingBit(vec4<u32>(16221u, arg_0.x, 4294967295u, var_0))), false));
    global0 = _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global0.x), vec2<i32>(-1i, -51962i), vec2<i32>(global0.x, -25676i)), vec2<i32>(-2147483647i, global0.x), any(vec2<bool>(true, global1.a))), ~(vec2<i32>(global0.x, -17662i) << (arg_0.xx % vec2<u32>(32u))))), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(select(vec2<i32>(global0.x, global0.x), vec2<i32>(13242i, -2147483647i), vec2<bool>(global1.a, global2.x)), -vec2<i32>(global0.x, global0.x)));
    let var_2 = ~_wgslsmith_div_vec4_i32(vec4<i32>(-global0.x, ~2147483647i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(10203i, global0.x, 61992i), vec3<i32>(-9086i, global0.x, global0.x))), -select(-vec4<i32>(8955i, global0.x, global0.x, global0.x), vec4<i32>(global0.x, global0.x, 2147483647i, 2147483647i), vec4<bool>(global2.x, global2.x, global1.a, false)));
    let var_3 = -(~countOneBits(min(vec4<i32>(var_2.x, var_2.x, var_2.x, -2147483647i) >> (vec4<u32>(var_1.x, 66222u, 1u, arg_0.x) % vec4<u32>(32u)), var_2 >> (vec4<u32>(arg_0.x, 4294967295u, var_0, var_0) % vec4<u32>(32u)))));
    return vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f + global1.b)) < global1.b), true, any(!select(vec3<bool>(true, global1.a, global2.x), vec3<bool>(false, true, global2.x), vec3<bool>(true, true, false))) || true);
}

fn func_2() -> bool {
    let var_0 = !select(select(vec3<bool>(false, any(global2.zy), !global1.a), vec3<bool>(false, false, global2.x), vec3<bool>(true, global2.x == global2.x, true)), vec3<bool>(true, true, true), select(select(select(vec3<bool>(global2.x, global1.a, true), vec3<bool>(global1.a, global1.a, global1.a), global1.a), !vec3<bool>(global1.a, global2.x, false), global1.a), vec3<bool>(true, global1.a, any(vec3<bool>(true, global2.x, global2.x))), select(!vec3<bool>(false, global2.x, false), vec3<bool>(global1.a, true, global1.a), vec3<bool>(true, global2.x, true))));
    global2 = !func_3(max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(1u, 1u, u_input.a)), vec3<u32>(4294967295u, 4294967295u, 0u)) | ~vec3<u32>(1u, u_input.a, u_input.b));
    let var_1 = vec3<bool>(all(var_0), !(!global1.a), !global1.a);
    global0 = vec2<i32>(min(abs(~22465i), 13557i), global0.x);
    let var_2 = vec2<u32>(~u_input.a, max(~(select(u_input.b, u_input.a, false) & ~u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(4294967295u << (u_input.b % 32u), u_input.b, _wgslsmith_add_u32(u_input.a, u_input.b)))));
    return !(any(!(!vec3<bool>(true, true, global1.a))) == !any(vec4<bool>(true, true, var_1.x, false)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<i32>(global0.x, -18426i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_add_i32(global0.x, global0.x)), 7138i), min(~global0.x, -_wgslsmith_mult_i32(global0.x, -14290i)), -(~(-1i))));
    global2 = !(!vec3<bool>(global1.a, func_2(), global1.a));
    let var_1 = abs(vec3<i32>(-13984i, 13628i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(7200i, global0.x, 13395i, -3147i), vec4<i32>(2147483647i, global0.x, var_0.x, var_0.x)), global0.x >> (16845u % 32u))) & ~vec3<i32>(global0.x ^ 14338i, global0.x, reverseBits(2147483647i)));
    var var_2 = u_input.b;
    var_0 = -(~(-var_1));
    return Struct_1(select(0u, _wgslsmith_sub_u32(~u_input.a, 1u), _wgslsmith_f_op_f32(-global1.b) > _wgslsmith_f_op_f32(floor(global1.b))) < 1u, global1.b);
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = vec2<i32>(~max(1i, 23711i), -2147483647i);
    global2 = !select(vec3<bool>(true, !global2.x, 55173u <= u_input.b), !(!vec3<bool>(global1.a, arg_0.a, arg_0.a)), true);
    var var_0 = func_1();
    let var_1 = firstTrailingBit(~_wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u)), vec2<u32>(35370u, u_input.a))));
    global1 = Struct_1(global1.a | (false && global1.a), _wgslsmith_f_op_f32(global1.b * -630f));
    return !var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(any(vec4<bool>(global2.x, func_4(func_1()), select(all(vec4<bool>(true, global1.a, false, false)), true, any(vec3<bool>(true, false, false))), false)), global1.b);
    global0 = ~reverseBits(firstLeadingBit(select(vec2<i32>(global0.x, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-25210i, 24574i), vec2<i32>(global0.x, -56683i)), true)));
    global1 = func_1();
    var var_0 = true;
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-48032i, global0.x, global0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -1i, global0.x), vec3<i32>(-2147483647i, -58695i, 61251i))), ~vec3<i32>(global0.x, global0.x, global0.x)), ~abs(max(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x)))));
}

