struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global1: Struct_4;

var<private> global2: vec4<bool>;

var<private> global3: array<bool, 26> = array<bool, 26>(true, true, false, false, true, true, false, false, true, false, false, true, false, true, true, false, false, true, false, true, true, true, false, false, false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(~35976u, firstLeadingBit(1u)), min(_wgslsmith_mult_u32(~63658u, 1u), _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(4294967295u, 890u)), firstLeadingBit(1u))));
    var var_1 = Struct_2(vec4<bool>(global2.x & all(select(vec3<bool>(true, true, false), vec3<bool>(global1.a, false, false), false)), !(!(!global3[_wgslsmith_index_u32(var_0.x, 26u)])), !all(vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 26u)])), true));
    global0 = array<vec3<bool>, 5>();
    let var_2 = Struct_3(Struct_1(all(!global2.xx)), _wgslsmith_f_op_f32(trunc(-1000f)), false, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.e.x, 813f)));
    var_1 = Struct_2(var_1.a);
    return ~firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(32421u, var_0.x), _wgslsmith_mult_vec2_u32(var_0, vec2<u32>(var_0.x, var_0.x))), vec2<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), var_0.x)));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global2 = vec4<bool>(true, global1.e.x, any(global2.xyw), true);
    var var_0 = (i32(-1i) * -1i) & u_input.b.x;
    return func_3();
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    global0 = array<vec3<bool>, 5>();
    var var_0 = select(-(~vec2<i32>(2147483647i, i32(-1i) * -2147483647i)), u_input.b, false);
    var var_1 = global2.zww;
    let var_2 = Struct_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(firstLeadingBit(func_2(1482f)), func_3()), countOneBits(countOneBits(vec2<u32>(1u, 308u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), 26u)], firstTrailingBit(-_wgslsmith_div_i32(global1.b, u_input.b.x) | ~select(1i, u_input.a, global3[_wgslsmith_index_u32(1u, 26u)])), global1.c, _wgslsmith_div_i32(-2147483647i, 11752i) & _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 63765i), select(vec3<i32>(u_input.b.x, global1.d, var_0.x), vec3<i32>(-1i, -50790i, var_0.x), vec3<bool>(arg_0.x, global2.x, true))), -var_0.x), var_1.yy);
    let var_3 = var_2;
    return select(!select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], !global2.x, var_3.c.c & arg_0.x, all(vec4<bool>(var_2.e.x, var_3.e.x, false, arg_0.x))), select(vec4<bool>(false, var_1.x, var_1.x, false), select(vec4<bool>(global1.c.a.a, var_2.a, true, true), vec4<bool>(false, false, var_1.x, false), false), vec4<bool>(var_3.a, true, var_1.x, true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global1.e.x, true, arg_0.x), vec4<bool>(false, var_3.a, var_1.x, false))), !vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(20781u, 1u, 29987u), vec3<u32>(4294967295u, 4294967295u, 42806u)) < ~165739u, global3[_wgslsmith_index_u32(1u, 26u)], any(vec2<bool>(true, true)), !any(global1.e)), any(vec2<bool>(any(vec2<bool>(false, arg_0.x)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(vec3<bool>(global3[_wgslsmith_index_u32(~1u, 26u)], !global3[_wgslsmith_index_u32(1u, 26u)], true)), !vec4<bool>(true, true, false, false | global2.x), select(global3[_wgslsmith_index_u32(0u, 26u)], !func_1(vec3<bool>(global2.x, true, global3[_wgslsmith_index_u32(0u, 26u)])).x, true));
    var var_1 = vec2<u32>(8210u, abs(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 43321u), vec3<u32>(1u, 36809u, 2746u))), vec3<u32>(1u, 1u, 1u))));
    var_0 = !(!(!vec4<bool>(var_1.x == var_1.x, true, global1.a, var_0.x)));
    let var_2 = firstTrailingBit(~vec3<u32>(var_1.x, 82869u, abs(firstTrailingBit(4294967295u))));
    var var_3 = _wgslsmith_add_u32(1u, 14114u);
    let var_4 = (vec4<i32>(~(-44327i), u_input.b.x, ~u_input.a, 36461i) | vec4<i32>(abs(u_input.a << (var_2.x % 32u)), _wgslsmith_add_i32(global1.b, global1.b), -44718i, i32(-1i) * -u_input.b.x)) >> (vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 88429u), vec4<u32>(9634u, var_1.x, 4294967295u, var_2.x)) & 78061u, 59285u), var_2.x, var_2.x, ~(~var_2.x)) % vec4<u32>(32u));
    let var_5 = ~var_2;
    var_3 = 74606u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.b, max(_wgslsmith_mod_i32(47961i, _wgslsmith_sub_i32(u_input.b.x, select(global1.d, -780i, global2.x))), 1i | _wgslsmith_dot_vec2_i32(u_input.b, var_4.wy << (var_5.xz % vec2<u32>(32u)))), 942f, ~max(reverseBits(vec2<u32>(var_5.x, 38210u)), var_2.yx));
}

