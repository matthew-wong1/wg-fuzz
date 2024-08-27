struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 22>;

var<private> global2: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(0u, 97116u, 4203u), vec3<u32>(22632u, 38596u, 83607u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 94601u, 34177u), vec3<u32>(1u, 15236u, 1u), vec3<u32>(4294967295u, 26700u, 81532u), vec3<u32>(1u, 41140u, 0u), vec3<u32>(34405u, 24909u, 680u));

var<private> global3: vec2<u32> = vec2<u32>(0u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = u_input.a;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -273f));
    var var_2 = ~(~select(u_input.b, ~(0u ^ arg_1.d.c.a.x), true));
    let var_3 = -_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-31554i, 1i, -2147483647i), min(max(var_0.x, global1[_wgslsmith_index_u32(10858u, 22u)]), -2147483647i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.d.x, -1712i, 9156i), countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], var_0.x, -1i)), any(vec2<bool>(true, true))), vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 22u)] ^ u_input.c, var_0.x | 47295i)));
    global3 = arg_1.d.c.a.zy & arg_1.a.c.a.xz;
    return max(arg_1.a.c.a & vec4<u32>(~arg_1.c.x, ~1u, arg_1.c.x, _wgslsmith_clamp_u32(u_input.b, u_input.b, 13964u)), arg_1.a.c.a) ^ ~(~(countOneBits(arg_1.d.c.a) >> (vec4<u32>(global3.x, arg_1.a.a, global3.x, 4294967295u) % vec4<u32>(32u))));
}

fn func_2(arg_0: Struct_4) -> vec3<bool> {
    global1 = array<i32, 22>();
    var var_0 = Struct_2(u_input.b, _wgslsmith_f_op_f32(-1f), Struct_1(min(max(vec4<u32>(37272u, global3.x, 24681u, u_input.b) ^ vec4<u32>(u_input.b, 4294967295u, global3.x, u_input.b), func_3(1642f, Struct_3(Struct_2(4294967295u, -1311f, Struct_1(vec4<u32>(0u, global3.x, 0u, 0u))), arg_0.b.x, global2[_wgslsmith_index_u32(37987u, 8u)], Struct_2(0u, 612f, Struct_1(vec4<u32>(0u, u_input.b, global3.x, 4294967295u)))))), vec4<u32>(global3.x, ~1u, global3.x >> (4294967295u % 32u), ~global3.x))));
    let var_1 = ~(~abs(firstLeadingBit(~global2[_wgslsmith_index_u32(global3.x, 8u)])));
    var_0 = Struct_2(1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b - -437f), _wgslsmith_f_op_f32(-729f * _wgslsmith_f_op_f32(trunc(-305f))))), Struct_1(var_0.c.a));
    let var_2 = max(_wgslsmith_div_u32(global3.x, _wgslsmith_sub_u32(15363u, var_1.x)), 4294967295u);
    return select(!select(!select(arg_0.b, arg_0.b, true), arg_0.b, vec3<bool>(all(arg_0.b.xx), any(arg_0.b), arg_0.b.x)), !select(arg_0.b, select(select(arg_0.b, arg_0.b, arg_0.b.x), !vec3<bool>(true, arg_0.b.x, arg_0.b.x), all(vec4<bool>(arg_0.b.x, true, true, arg_0.b.x))), vec3<bool>(arg_0.b.x, false, all(vec4<bool>(false, arg_0.b.x, arg_0.b.x, false)))), arg_0.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = Struct_4(~_wgslsmith_dot_vec4_i32((vec4<i32>(23574i, 3276i, 2147483647i, u_input.a.x) ^ vec4<i32>(u_input.d.x, u_input.a.x, 2147483647i, 67767i)) | max(vec4<i32>(global1[_wgslsmith_index_u32(global3.x, 22u)], 2147483647i, 1i, global1[_wgslsmith_index_u32(0u, 22u)]), vec4<i32>(global1[_wgslsmith_index_u32(1u, 22u)], 13510i, u_input.a.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(3547i, 0i, -10959i, -1i), firstLeadingBit(vec4<i32>(u_input.c, 8080i, global1[_wgslsmith_index_u32(42771u, 22u)], global1[_wgslsmith_index_u32(global3.x, 22u)])))), select(select(!(!vec3<bool>(true, arg_1.b, false)), func_2(Struct_4(-827i, vec3<bool>(false, arg_1.b, true), -25201i)), !(!vec3<bool>(arg_1.b, true, true))), vec3<bool>(!arg_1.b, any(vec3<bool>(arg_1.b, arg_1.b, true)), true), vec3<bool>(any(select(vec2<bool>(true, arg_1.b), vec2<bool>(true, arg_1.b), vec2<bool>(false, arg_1.b))), ~1u == _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 26401u), arg_0.a.yz), !(!arg_1.b))), i32(-1i) * -1i);
    let var_1 = Struct_3(arg_1.a, !(true && arg_1.b), vec3<u32>(u_input.b, 5145u, u_input.b), Struct_2(global3.x, arg_1.a.b, arg_1.d.c));
    var var_2 = Struct_2(global3.x, arg_2, var_1.a.c);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -557f);
    var_2 = var_1.d;
    return arg_1.d.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(63116u, global3.x), vec2<u32>(u_input.b, u_input.b)) & reverseBits(vec2<u32>(global3.x, 88549u)))) << (vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 4294967295u) >> (0u % 32u), _wgslsmith_add_u32(func_1(Struct_1(vec4<u32>(48742u, 25035u, 4294967295u, 24951u)), Struct_3(Struct_2(59509u, 162f, Struct_1(vec4<u32>(u_input.b, global3.x, u_input.b, 0u))), true, global2[_wgslsmith_index_u32(17275u, 8u)], Struct_2(21512u, 321f, Struct_1(vec4<u32>(u_input.b, 1u, 86533u, global3.x)))), 2462f, global3.x), ~global3.x), countOneBits(_wgslsmith_mult_u32(global3.x, global3.x))), global3.x) % vec2<u32>(32u));
    global1 = array<i32, 22>();
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(select(global3.x | ~70121u, select(u_input.b, 4294967295u, func_2(Struct_4(29161i, vec3<bool>(false, true, false), u_input.a.x)).x), true), ~0u)), 22u)];
    global0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) != true;
    global2 = array<vec3<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(-1i, -min(u_input.d.x, -27007i), false), u_input.d.x, ~(i32(-1i) * -u_input.d.x)), min(vec4<i32>(-countOneBits(16046i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(2986u, 22u)], u_input.d.x, -1i), u_input.d), select(_wgslsmith_mult_i32(u_input.d.x, 72690i), u_input.c | u_input.a.x, true), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x, ~30100u), 22u)]), vec4<i32>(firstTrailingBit(-34826i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(59421u, 22u)]), _wgslsmith_sub_vec2_i32(u_input.d.yy, vec2<i32>(global1[_wgslsmith_index_u32(global3.x, 22u)], 1i))), (u_input.c << (53664u % 32u)) | (-1418i << (1u % 32u)), ~(~(-1i)))), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(24629i, global1[_wgslsmith_index_u32(global3.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)])), ~u_input.a), countOneBits(-1i), 1i), 1829f, firstLeadingBit(vec2<u32>(~(~15242u), _wgslsmith_add_u32(~2052u, u_input.b))));
}

