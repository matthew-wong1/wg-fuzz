struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -25727i);

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<i32, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1() -> Struct_1 {
    global0 = -vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global2[_wgslsmith_index_u32(0u, 14u)]), vec2<i32>(-37972i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]))), -1i) | _wgslsmith_div_vec2_i32(-(vec2<i32>(global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]) & abs(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], -2147483647i))), vec2<i32>(global0.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(24699u, u_input.a.x, u_input.a.x), 14u)] << (~u_input.a.x % 32u)));
    global2 = array<i32, 14>();
    global0 = _wgslsmith_sub_vec2_i32(firstLeadingBit(-(~vec2<i32>(-20580i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]))) ^ (vec2<i32>(global2[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, false), 14u)], global0.x) ^ _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(72168i, -2147483647i)), ~vec2<i32>(171i, global0.x))), ~abs(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 1i) & ~vec2<i32>(1i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)])));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-372f, 1382f, 126f, -1922f), vec4<f32>(-630f, -1257f, 1045f, 1022f), false)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1937f, -412f, -646f, 494f))))))));
    let var_1 = u_input.a.x;
    return Struct_1(!any(vec2<bool>(true, true)), -2060f, -_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(var_1, 14u)]), vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), firstTrailingBit(vec2<i32>(global0.x, -1i))), firstTrailingBit(vec2<i32>(2147483647i, 1i))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(abs(19450u), _wgslsmith_sub_u32(u_input.a.x, 66624u)), ~29429u), abs(vec3<u32>(41572u, ~1u, 9720u))), global1[_wgslsmith_index_u32(4294967295u, 18u)]);
    var var_1 = u_input.a.x;
    global1 = array<Struct_1, 18>();
    let var_2 = func_1();
    let var_3 = !(!(!(!vec4<bool>(arg_0.a, var_0.b.a, var_2.a, var_2.a))));
    return ~max(~83678u, u_input.a.x);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    global0 = reverseBits(-arg_2.b.c);
    global2 = array<i32, 14>();
    let var_0 = u_input.a.x | _wgslsmith_mod_u32(~arg_3.x, reverseBits(arg_2.a.x));
    let var_1 = ~firstLeadingBit(~var_0);
    let var_2 = !select(vec4<bool>(true, false, any(select(vec3<bool>(arg_2.b.a, false, false), vec3<bool>(arg_2.b.a, false, false), vec3<bool>(arg_0.b.a, arg_0.b.a, false))), !any(vec2<bool>(arg_2.b.a, false))), vec4<bool>(!arg_2.b.a, all(vec2<bool>(false, true)), arg_0.b.a, func_1().a), !(!arg_0.b.a));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(1u >> ((func_2(func_1()) | func_2(Struct_1(true, _wgslsmith_f_op_f32(step(1000f, 584f)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-7239i, global0.x))))) % 32u), 18u)];
    global0 = -abs(var_0.c << (~(~vec2<u32>(8139u, u_input.a.x)) % vec2<u32>(32u)));
    global0 = var_0.c;
    var_0 = func_1();
    var var_1 = ~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(2147483647i, var_0.c.x, global0.x, global2[_wgslsmith_index_u32(4294967295u, 14u)]) | ~vec4<i32>(20998i, var_0.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], -2147483647i)), vec4<i32>(-22646i, _wgslsmith_dot_vec2_i32(var_0.c | vec2<i32>(global2[_wgslsmith_index_u32(11484u, 14u)], var_0.c.x), func_1().c), ~33897i | var_0.c.x, countOneBits(-global0.x)));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(28288i, vec3<f32>(1295f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1546f, var_0.b))) - var_0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), var_0.b, true && any(vec3<bool>(var_2, var_2, var_2))))), vec4<u32>(func_3(Struct_2(vec3<u32>(12260u, u_input.a.x, 4294967295u), global1[_wgslsmith_index_u32(4294967295u, 18u)]), -325f, Struct_2(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), Struct_1(false, 909f, vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]))), abs(u_input.a.xy)) & u_input.a.x, select(_wgslsmith_div_u32(u_input.a.x, max(u_input.a.x, 4294967295u)), reverseBits(12165u), var_2), u_input.a.x, 4294967295u), u_input.a.xy);
}

