struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 23> = array<i32, 23>(0i, 36901i, 0i, 0i, i32(-2147483648), 16782i, 1i, i32(-2147483648), -30060i, 1i, 0i, -10291i, -9740i, -1435i, 1i, 2147483647i, 0i, -25954i, 19015i, 1i, -25247i, 0i, -42106i);

var<private> global2: vec4<u32> = vec4<u32>(0u, 0u, 4294967295u, 1u);

var<private> global3: i32;

var<private> global4: vec3<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = max(global2.wyw, max(~(vec3<u32>(global4.x, global4.x, global4.x) & ~vec3<u32>(0u, 4294967295u, global2.x)), vec3<u32>(min(0u, global4.x) | reverseBits(114723u), ~countOneBits(4294967295u), firstLeadingBit(4294967295u))));
    var var_1 = Struct_4(global0.c);
    global2 = countOneBits(~var_1.a.b);
    global4 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(~global0.b.c.x), countOneBits(global2.x), 60308u), vec3<u32>(select(0u, ~global2.x, true), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_1.a.b.x, global0.d.a.x), firstLeadingBit(vec3<u32>(var_1.a.a.x, var_1.a.a.x, 59425u))), ~min(global4.x, var_1.a.a.x)), 0u));
    global2 = reverseBits(vec4<u32>(global2.x, 108340u, _wgslsmith_sub_u32(~global2.x, 1u), 45213u));
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(96954u, global2.x), 23u)];
}

fn func_2() -> Struct_4 {
    let var_0 = global0.a.c;
    let var_1 = ~(~(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global2.x, 65840u, global0.d.b.x, global0.c.b.x)), global0.c.b << (global0.d.b % vec4<u32>(32u))) << (global4.x % 32u)));
    var var_2 = -vec4<i32>(func_3(), max(_wgslsmith_div_i32(23949i, u_input.b.x), firstLeadingBit(1i)), 1i, firstTrailingBit(u_input.b.x)) | abs(vec4<i32>(-1i, ~(-60766i), ~3863i, -54532i));
    let var_3 = firstLeadingBit(~var_1);
    var var_4 = Struct_5(vec2<bool>(any(select(vec3<bool>(true, global0.d.c, false), vec3<bool>(true, false, global0.a.c), vec3<bool>(global0.a.c, global0.c.c, false))) != global0.c.c, false), Struct_2(select(global0.c.b.wwx >> (vec3<u32>(var_1, 0u, 4294967295u) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(var_3, 0u, 1u)), vec3<bool>(global0.d.c, all(vec4<bool>(global0.a.c, false, global0.d.c, false)), global0.e >= -259f)), vec4<u32>(min(_wgslsmith_sub_u32(1123u, global4.x), 1u), ~_wgslsmith_div_u32(0u, global2.x), ~(~var_3), _wgslsmith_dot_vec2_u32(global0.d.a.zy, global4.xy)), global0.a.c), 71043u);
    return Struct_4(Struct_2(~global2.zyw, ~((global0.d.b ^ vec4<u32>(var_3, 36601u, global2.x, 17875u)) << (firstLeadingBit(vec4<u32>(var_4.c, 1u, 53544u, 66623u)) % vec4<u32>(32u))), any(vec2<bool>(var_4.a.x, true))));
}

fn func_1() -> StorageBuffer {
    let var_0 = select(!(!(!(!vec2<bool>(true, global0.d.c)))), !vec2<bool>(select(global0.c.c, false, global0.d.c) && !global0.d.c, false), !select(!(!vec2<bool>(false, global0.c.c)), vec2<bool>(global0.c.c | true, global0.a.c), -210f >= global0.e));
    let var_1 = func_2();
    let var_2 = global0.b.c << (vec3<u32>(global0.d.b.x, 49175u, 36103u) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-741f, -498f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, 423f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(251f, -220f), vec2<f32>(-772f, global0.e)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.e, -673f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.e, global0.e))))), !(all(vec4<bool>(global0.c.c, var_0.x, false, global0.c.c)) || all(vec2<bool>(true, true)))))));
    var var_4 = Struct_5(select(!(!var_0), !var_0, !(!var_0)), global0.d, 44361u);
    return StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(64549u, ~countOneBits(89975u), 82788u, ~1u), firstLeadingBit(global0.b.a)), i32(-1i) * -u_input.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0.e, global0.e)))), _wgslsmith_f_op_f32(exp2(var_3.x))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 302f)), 373f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e, var_3.x) * vec2<f32>(-1064f, global0.e)), vec2<f32>(243f, -1063f))), var_4.a))), min(global2.xz, firstTrailingBit(firstLeadingBit(vec2<u32>(var_4.b.b.x, 4294967295u) ^ global4.zy))), countOneBits(abs(-vec4<i32>(u_input.b.x, u_input.d, global1[_wgslsmith_index_u32(global0.d.a.x, 23u)], -1i))) << (var_4.b.b % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(global0.a.b);
    global1 = array<i32, 23>();
    let var_0 = ~2147483647i;
    let x = u_input.a;
    s_output = func_1();
}

