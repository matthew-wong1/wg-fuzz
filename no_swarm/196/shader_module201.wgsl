struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 26863u);

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    return _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.c, 1672u, max(_wgslsmith_add_u32(global0.x >> (global1.x % 32u), 1u), 1u), global2.d), ~vec4<u32>(~43686u, _wgslsmith_add_u32(1u, 33889u), u_input.a, 1u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(false, vec3<u32>(85518u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), global2.b.xy << (global2.b.zy % vec2<u32>(32u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(reverseBits(u_input.a), 28u)], func_3(vec3<f32>(821f, -1000f, 752f), Struct_1(global2.a, vec3<u32>(12187u, u_input.a, global0.x), 0u, u_input.a), global2.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(32353u, global1.x, u_input.a, 4294967295u), global3[_wgslsmith_index_u32(global1.x, 28u)]), vec4<u32>(global0.x, 19742u, 25399u, 73711u)))), global2.d, abs(global2.c));
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = -(firstTrailingBit(~_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 1i), vec2<i32>(u_input.c.x, 17469i))) >> (global0.yy % vec2<u32>(32u)));
    let var_2 = 0u == _wgslsmith_mult_u32(14755u, ~var_0.b.x);
    global1 = countOneBits(var_0.b.zx);
    let var_3 = u_input.b;
    return var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> u32 {
    global3 = array<vec4<u32>, 28>();
    let var_0 = !(!vec4<bool>(all(vec3<bool>(arg_0, false, true)), true, arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -2649f) != _wgslsmith_f_op_f32(round(1000f))));
    let var_1 = arg_1;
    global2 = var_1;
    let var_2 = u_input.d.x;
    return 13132u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(25073u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, global0.x, global1.x), vec4<u32>(global2.d, global2.d, 0u, 1u)), global1.x, ~(~32742u)), global3[_wgslsmith_index_u32(global2.d, 28u)]);
    global1 = global0.yz;
    var var_1 = ~((func_4(global2.a, func_1()) >> (~4294967295u % 32u)) & 61933u);
    global0 = var_0.yyy;
    let var_2 = func_2();
    let var_3 = ~var_2.b;
    global0 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_0.x, 0u, global1.x)) << (select(reverseBits(vec3<u32>(61027u, var_2.c, 1u)), countOneBits(vec3<u32>(var_3.x, global0.x, u_input.a)), false) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_2.d, 0u), ~u_input.a, 67004u), var_2.b, vec3<u32>(42197u, var_3.x, ~0u)), vec3<u32>(1u, global0.x, func_1().b.x)) << (max(global2.b >> (vec3<u32>(global1.x, ~17788u, 0u) % vec3<u32>(32u)), global2.b) % vec3<u32>(32u));
    let var_4 = func_1();
    var var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, u_input.d.x, u_input.b, -18345i) << (~vec4<u32>(global2.c, var_2.c, 32226u, u_input.a) % vec4<u32>(32u)), ~select(vec4<i32>(u_input.d.x, 1i, -692i, -1i), vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x), var_2.a)), countOneBits(vec4<i32>(u_input.c.x << (u_input.a % 32u), -1i, u_input.b, abs(u_input.d.x)))), _wgslsmith_dot_vec4_u32(min(vec4<u32>(43469u, ~1319u, 4294967295u << (var_3.x % 32u), var_3.x), global3[_wgslsmith_index_u32(5092u, 28u)]), reverseBits(countOneBits(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -264f))))), 1i);
}

