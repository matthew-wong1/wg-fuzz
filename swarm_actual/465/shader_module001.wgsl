struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(43223u, 1u, 0u), 1046i, 981f, vec4<i32>(-1i, 1i, i32(-2147483648), 0i)), Struct_1(vec3<u32>(4294967295u, 28058u, 19762u), -1i, 531f, vec4<i32>(i32(-2147483648), -21896i, -1i, -37774i)), Struct_1(vec3<u32>(36041u, 1u, 4294967295u), -22813i, 324f, vec4<i32>(0i, -61207i, 16495i, 0i)), Struct_1(vec3<u32>(1112u, 45777u, 0u), 2147483647i, 782f, vec4<i32>(-1i, i32(-2147483648), -1i, 18014i)), Struct_1(vec3<u32>(11240u, 4294967295u, 1u), -27335i, -466f, vec4<i32>(i32(-2147483648), 2147483647i, -1i, -1i)), Struct_1(vec3<u32>(25467u, 25998u, 0u), -19557i, -780f, vec4<i32>(9228i, -1185i, -15030i, -5598i)), Struct_1(vec3<u32>(67433u, 15656u, 34099u), 13497i, 610f, vec4<i32>(26791i, 14726i, 2147483647i, 1i)), Struct_1(vec3<u32>(8980u, 30241u, 33073u), 1i, 1385f, vec4<i32>(1i, 28393i, -23493i, i32(-2147483648))), Struct_1(vec3<u32>(42789u, 0u, 30145u), -27525i, -245f, vec4<i32>(1i, 1i, 23138i, -69924i)), Struct_1(vec3<u32>(1u, 1u, 0u), 2147483647i, 667f, vec4<i32>(-1i, -9816i, i32(-2147483648), 1i)), Struct_1(vec3<u32>(304u, 1u, 1u), -14924i, 681f, vec4<i32>(2147483647i, -1i, 19566i, -43307i)));

var<private> global3: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = vec3<f32>(-930f, _wgslsmith_f_op_f32(floor(global1.a.c)), global1.d.c);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-325f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-413f, global1.b.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1854f)), global0.x, global1.c.x)), _wgslsmith_f_op_f32(-global0.x));
    var var_1 = !global1.c.x;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1169f, _wgslsmith_f_op_f32(round(global1.d.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f)))))) + vec3<f32>(var_0.x, 103f, global1.a.c));
    let var_2 = global2[_wgslsmith_index_u32(global1.a.a.x >> (4294967295u % 32u), 11u)];
    return global1.a.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1164f + -869f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = global3[_wgslsmith_index_u32(max(select(_wgslsmith_div_u32(4294967295u, 0u << ((0u << (global1.d.a.x % 32u)) % 32u)), global1.a.a.x, _wgslsmith_sub_u32(func_3(arg_0.x), 24963u) < _wgslsmith_div_u32(~global1.d.a.x, _wgslsmith_add_u32(global1.d.a.x, global1.a.a.x))), 1u), 15u)];
    global2 = array<Struct_1, 11>();
    let var_2 = 30648i;
    let var_3 = vec4<i32>(global1.a.b, ~abs(-2147483647i), -61680i, max(33975i, var_2));
    return Struct_1(_wgslsmith_div_vec3_u32(select(reverseBits(global1.d.a), global1.d.a, vec3<bool>(!arg_1.x, !arg_1.x, any(arg_1.ywy))), _wgslsmith_mod_vec3_u32(global1.a.a, (vec3<u32>(global1.a.a.x, global1.a.a.x, 11674u) | vec3<u32>(0u, global1.d.a.x, 44524u)) ^ firstLeadingBit(vec3<u32>(global1.a.a.x, global1.d.a.x, 0u)))), var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(max(-184f, global0.x))))), -(~vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -2147483647i, 0i), vec3<i32>(global1.a.d.x, 1i, var_2)), abs(global1.d.d.x), countOneBits(global1.d.b))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> Struct_5 {
    var var_0 = reverseBits(min(~((u_input.e.x << (global1.d.a.x % 32u)) | _wgslsmith_mod_i32(u_input.e.x, u_input.c.x)), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -1i, 2147483647i)), vec3<i32>(u_input.a.x, -49656i, arg_2)))));
    global1 = Struct_2(func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-250f))), 994f, global0.x, arg_1.x), vec4<bool>(all(select(vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, false, false))), any(!vec4<bool>(global1.c.x, false, arg_0, false)), all(vec4<bool>(false, arg_0, global1.c.x, global1.c.x)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-220f, -765f) * vec2<f32>(2267f, -1380f))))), _wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.a.c, arg_1.x), _wgslsmith_f_op_f32(global0.x - 1000f), false)), -627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, 196f)) * 1000f))), global1.c, Struct_1(firstTrailingBit(~(global1.d.a << (vec3<u32>(11523u, global1.a.a.x, 19788u) % vec3<u32>(32u)))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global1.a.d, _wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(5744i, arg_2, 5459i, arg_2))), ~0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_div_f32(869f, arg_1.x)))), countOneBits(-vec4<i32>(-55462i, -51959i, arg_2, 36244i) & u_input.e)), ~vec2<i32>(abs(global1.a.d.x), -_wgslsmith_mod_i32(-1i, -2147483647i)));
    var var_1 = true;
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 11u)];
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f * _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(200f)) + -357f)) * global0.x), global1.d.c);
    return Struct_5(func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1133f, var_3.x, arg_1.x, global1.a.c)))))), select(vec4<bool>(global1.a.a.x != 1u, true, global1.c.x, -1862i != arg_2), vec4<bool>(arg_0, arg_0, true, arg_0), any(!vec4<bool>(true, arg_0, true, false))), global1.b.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = 0u;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b, global1.b, vec3<bool>(true, false, global1.c.x)))))))));
    var var_2 = func_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(320f * -1000f), global1.d.c) * global1.b)), 1i);
    global0 = global1.b;
    var var_3 = select(select(!vec2<bool>(false, select(true, false, global1.c.x)), !(!select(vec2<bool>(global1.c.x, true), vec2<bool>(true, global1.c.x), global1.c.x)), !global1.c), !global1.c, false);
    let var_4 = -abs(_wgslsmith_mult_vec2_i32(vec2<i32>(max(var_2.a.d.x, u_input.b.x), var_2.a.b), ~firstLeadingBit(var_2.a.d.xy)));
    var_3 = select(select(!select(select(vec2<bool>(false, global1.c.x), vec2<bool>(true, var_3.x), global1.c), vec2<bool>(var_3.x, false), vec2<bool>(true, true)), global1.c, global1.c), !(!select(global1.c, global1.c, !vec2<bool>(global1.c.x, var_3.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - var_2.a.c) + _wgslsmith_f_op_f32(376f - var_2.a.c)))) <= 240f);
    let var_5 = Struct_3(global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(1i, -162f);
}

