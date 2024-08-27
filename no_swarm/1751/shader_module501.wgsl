struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 15>;

var<private> global3: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    return ~(47848u | global1.a);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~func_3(arg_2, true);
    global1 = Struct_1(min(~0u, firstTrailingBit(~4294967295u)));
    var var_1 = select(select(false, global1.a == _wgslsmith_div_u32(1u, select(arg_2.a, u_input.c, false)), false), true, true);
    let var_2 = !vec2<bool>(any(vec2<bool>(all(vec2<bool>(true, true)), true)), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)));
    var var_3 = Struct_1(~59744u);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(39257u, 4294967295u, var_3.a, 39942u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a, var_3.a, 32248u, u_input.c), vec4<u32>(1u, 39581u, arg_0, u_input.c))), _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 0u, u_input.c, global3.a), vec4<u32>(4294967295u, 1u, arg_0, global3.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, var_3.a, 1u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a, 6893u, 0u, arg_0), vec4<u32>(3602u, 10604u, 1u, 0u)), vec4<u32>(34335u, 4294967295u, arg_2.a, u_input.b)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 0u, ~0u, u_input.b) >> (~(~vec4<u32>(17764u, 0u, 41717u, arg_2.a)) % vec4<u32>(32u)), ~max(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, 13744u), vec4<u32>(23509u, 23183u, arg_2.a, global3.a)), vec4<u32>(51486u, var_3.a, 59774u, u_input.a.x))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~func_2(0u, vec2<i32>(0i, -2147483647i) >> (u_input.a % vec2<u32>(32u)), Struct_1(109319u))) ^ (1u >> (_wgslsmith_mult_u32(1u & ~global1.a, 1u) % 32u)), 2u)];
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~select(4294967295u, _wgslsmith_mod_u32(global1.a, var_0.a), true)), ~min(_wgslsmith_div_u32(~614u, global3.a | 72369u), global3.a), ~45314u), 2u)];
    return ~abs(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(global1.a >> (max(_wgslsmith_add_u32(u_input.c >> (77264u % 32u), func_1(global2[_wgslsmith_index_u32(4294967295u, 15u)], vec4<f32>(global2[_wgslsmith_index_u32(global3.a, 15u)], -1037f, -278f, global2[_wgslsmith_index_u32(0u, 15u)]), -4088i)), 4294967295u) % 32u)), 2u)];
    var var_1 = Struct_1(1u);
    let var_2 = global0[_wgslsmith_index_u32(var_0.a, 2u)];
    let var_3 = Struct_1(~_wgslsmith_mod_u32(~var_1.a, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, 45643u))));
    global2 = array<f32, 15>();
    global3 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer((1i >> (var_0.a % 32u)) | max(~_wgslsmith_mult_i32(2329i, 1i), -2147483647i), 26840i);
}

