struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(18147u), Struct_1(3488u), Struct_1(36219u), Struct_1(27566u), Struct_1(1u), Struct_1(0u), Struct_1(72222u), Struct_1(1u), Struct_1(4294967295u), Struct_1(35411u), Struct_1(1u), Struct_1(0u));

var<private> global3: array<Struct_4, 18>;

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = select(min(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, arg_2.b, 2147483647i), vec3<i32>(-61985i, global0.b, global0.b))), select(arg_2.b, 2147483647i & global0.b, true)) | -firstTrailingBit(reverseBits(2147483647i)), ~(_wgslsmith_sub_i32(arg_2.b, global0.b) & 4228i), !(false && any(select(arg_2.a, vec4<bool>(arg_2.a.x, true, global0.a.x, true), global0.a))));
    var var_1 = -select(vec4<i32>(firstTrailingBit(-2147483647i), abs(16362i), arg_2.b, _wgslsmith_sub_i32(arg_2.b, arg_2.b)), vec4<i32>(global0.b, arg_2.b, 1i, 0i) & reverseBits(vec4<i32>(74541i, -1i, global0.b, arg_2.b)), !arg_2.a.x) | abs(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(0i, global0.b, 2147483647i, arg_2.b)), select(-vec4<i32>(global0.b, -2147483647i, 1i, -53999i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.b, 2147483647i, arg_2.b, 3941i), vec4<i32>(global0.b, global0.b, 2147483647i, 8324i), vec4<i32>(arg_2.b, global0.b, -38171i, -2147483647i)), !arg_2.a.x)));
    var var_2 = Struct_4(!vec4<bool>(true, global1.a, false, arg_2.a.x), ~1i);
    var var_3 = arg_2;
    var var_4 = reverseBits(vec2<i32>(global0.b | abs(_wgslsmith_mod_i32(48862i, -27518i)), _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(5545i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, 25721i, arg_2.b), vec4<i32>(var_2.b, -24273i, -33876i, 32361i))), -3396i)));
    return select(firstTrailingBit(~_wgslsmith_clamp_vec2_u32(select(global1.c.zx, u_input.a.zz, global0.a.wy), ~global1.c.zy, abs(vec2<u32>(4685u, arg_0.a.a)))), arg_3.zy, arg_2.a.wy);
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(global1.c.x), 1u), ~(~0u), ~0u), 41655u);
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(67004u, 8984u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.a.yy, global1.c.xy)), firstLeadingBit(u_input.a.zy)) >> (_wgslsmith_mod_vec2_u32(abs(func_3(Struct_2(global2[_wgslsmith_index_u32(20815u, 12u)]), -1156f, global3[_wgslsmith_index_u32(0u, 18u)], vec3<u32>(15001u, var_0.x, 70849u))) ^ global1.c.yy, vec2<u32>(global1.c.x, func_3(Struct_2(global2[_wgslsmith_index_u32(global1.c.x, 12u)]), global1.b.x, global3[_wgslsmith_index_u32(~1u, 18u)], vec3<u32>(1u, global1.c.x, global1.c.x)).x)) % vec2<u32>(32u));
    let var_2 = Struct_3(true, global1.b, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global1.c.yx, abs(global1.c.xy)), global1.c.x | (var_0.x >> (var_1.x % 32u)), 0u), ~(~abs(global1.c))));
    var var_3 = -1364f;
    let var_4 = abs(abs(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(~2521u, 4294967295u & var_0.x, 4294967295u), 1u, var_0.x)));
    return countOneBits(arg_0.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 12u)];
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(max(~(firstTrailingBit(var_0.a) >> (7735u % 32u)), global1.c.x), 12u)]);
    var var_2 = vec2<i32>(reverseBits(-1i), -_wgslsmith_sub_i32(_wgslsmith_div_i32(reverseBits(-2219i), global0.b ^ global0.b), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, global0.b, global0.b, -44270i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.b, -1i, 43272i, 2147483647i), vec4<i32>(global0.b, global0.b, -2147483647i, global0.b)))));
    var_2 = abs(vec2<i32>(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(-25564i, 1i), vec2<i32>(8338i, var_2.x))), 0i) & select(~vec2<i32>(19668i, -72015i) & firstLeadingBit(vec2<i32>(var_2.x, -1i)), _wgslsmith_div_vec2_i32(vec2<i32>(global0.b, global0.b), vec2<i32>(-2147483647i, -2147483647i)) >> (global1.c.xx % vec2<u32>(32u)), !(!arg_0.wz)));
    let var_3 = 587f;
    return StorageBuffer(vec3<i32>(global0.b, _wgslsmith_sub_i32(~(~var_2.x), _wgslsmith_mult_i32(i32(-1i) * -16453i, 1i)), -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f + var_3) * 1f)))), var_2.x, 56144u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 12>();
    global2 = array<Struct_1, 12>();
    global0 = global3[_wgslsmith_index_u32(0u, 18u)];
    global3 = array<Struct_4, 18>();
    global1 = Struct_3((global1.a && global0.a.x) | !(global1.a & global0.a.x), _wgslsmith_f_op_vec4_f32(min(global1.b, global1.b)), ~firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(global1.c.x, global1.c.x, 71492u), u_input.a)));
    let x = u_input.a;
    s_output = func_1(global0.a, global1.a);
}

