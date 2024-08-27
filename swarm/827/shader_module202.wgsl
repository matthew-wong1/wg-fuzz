struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(61789u, 42230u, 0u, 4519u, 0u, 0u);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: Struct_2 = Struct_2(vec2<f32>(-462f, 848f), true, vec3<bool>(false, false, false), vec3<f32>(1000f, 1333f, 736f));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = !any(vec3<bool>(all(vec4<bool>(false, true, global1.x, true)), any(select(vec3<bool>(global2.c.x, false, false), vec3<bool>(global2.b, false, false), vec3<bool>(true, false, global2.b))), global2.b));
    global1 = !vec2<bool>(!(_wgslsmith_add_i32(u_input.c.x, -2147483647i) > global3.b.x), true);
    global0 = array<u32, 6>();
    var_0 = true;
    global0 = array<u32, 6>();
    return _wgslsmith_div_u32(abs(1u), ~_wgslsmith_mult_u32(~global3.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global3.a), vec2<u32>(global3.a, global0[_wgslsmith_index_u32(30293u, 6u)])), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(35941u, 6u)]), vec2<u32>(global0[_wgslsmith_index_u32(global3.a, 6u)], 4294967295u)))));
}

fn func_2() -> Struct_2 {
    var var_0 = -7444i;
    var var_1 = Struct_1(~(~(~global0[_wgslsmith_index_u32(func_3(), 6u)])), max(vec2<i32>(7145i, global3.b.x) >> (vec2<u32>(0u, global0[_wgslsmith_index_u32(global3.a, 6u)]) % vec2<u32>(32u)), ~(vec2<i32>(1i, -4221i) | global3.b)) << (~firstTrailingBit(~vec2<u32>(0u, 1u)) % vec2<u32>(32u)));
    global1 = !global2.c.xy;
    global3 = Struct_1(var_1.a, firstTrailingBit(firstLeadingBit(u_input.c)));
    let var_2 = select(-abs((vec3<i32>(global3.b.x, 1i, var_1.b.x) ^ vec3<i32>(global3.b.x, var_1.b.x, -28045i)) ^ countOneBits(vec3<i32>(0i, var_1.b.x, 12764i))), -_wgslsmith_mult_vec3_i32(~(~vec3<i32>(var_1.b.x, 0i, 1i)), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(global3.b.x, var_1.b.x, global3.b.x)), vec3<i32>(2147483647i, 0i, var_1.b.x))), false);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-972f, _wgslsmith_f_op_f32(step(global2.d.x, -565f)))))), global1.x, global2.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.d * global2.d))));
}

fn func_1() -> StorageBuffer {
    let var_0 = global2.c.xz;
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~0u, 6u)], global0[_wgslsmith_index_u32(~1u, 6u)]), global3.a);
    global2 = func_2();
    var var_2 = abs(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(96642u, 6u)] >> (_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, global0[_wgslsmith_index_u32(2794u, 6u)]), vec2<u32>(global3.a, 4294967295u)), select(vec2<u32>(global0[_wgslsmith_index_u32(0u, 6u)], 21028u), vec2<u32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(65190u, 6u)]), false)) % 32u), 101122u));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(298f, _wgslsmith_f_op_f32(abs(global2.a.x)), _wgslsmith_f_op_f32(max(global2.d.x, 184f)), global2.d.x))), vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1329f))), _wgslsmith_f_op_f32(-func_2().a.x), global2.a.x), false))));
    return StorageBuffer(vec2<u32>(6752u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 1u, 62139u), vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(var_1.x, 6u)], var_1.x)), 95772u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 6>();
    let x = u_input.a;
    s_output = func_1();
}

