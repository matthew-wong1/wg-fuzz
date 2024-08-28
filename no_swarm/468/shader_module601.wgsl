struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(-281f, 157f))), Struct_3(vec4<bool>(false, false, false, true), Struct_2(vec2<f32>(1000f, -248f))), Struct_3(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(-601f, -2030f))), Struct_3(vec4<bool>(false, true, true, false), Struct_2(vec2<f32>(-1222f, 306f))), Struct_3(vec4<bool>(false, false, true, true), Struct_2(vec2<f32>(-463f, -1061f))), Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(-1546f, 281f))), Struct_3(vec4<bool>(true, true, false, false), Struct_2(vec2<f32>(-122f, -748f))), Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec2<f32>(327f, 2545f))), Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(568f, 898f))), Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec2<f32>(-124f, 1037f))), Struct_3(vec4<bool>(false, true, true, false), Struct_2(vec2<f32>(442f, 286f))), Struct_3(vec4<bool>(false, false, true, true), Struct_2(vec2<f32>(-1125f, 1694f))), Struct_3(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(610f, -2022f))), Struct_3(vec4<bool>(false, true, true, true), Struct_2(vec2<f32>(310f, -1815f))), Struct_3(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(1935f, -694f))), Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec2<f32>(-1915f, -1248f))), Struct_3(vec4<bool>(true, true, false, true), Struct_2(vec2<f32>(-1488f, -1609f))), Struct_3(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(-442f, 550f))), Struct_3(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(1000f, 1132f))), Struct_3(vec4<bool>(false, true, false, false), Struct_2(vec2<f32>(-1059f, -510f))), Struct_3(vec4<bool>(false, true, true, true), Struct_2(vec2<f32>(-1037f, -1330f))), Struct_3(vec4<bool>(true, true, false, true), Struct_2(vec2<f32>(1508f, -455f))), Struct_3(vec4<bool>(false, false, true, true), Struct_2(vec2<f32>(487f, 359f))), Struct_3(vec4<bool>(true, false, false, true), Struct_2(vec2<f32>(2030f, -182f))), Struct_3(vec4<bool>(false, true, false, true), Struct_2(vec2<f32>(707f, -372f))), Struct_3(vec4<bool>(true, true, false, true), Struct_2(vec2<f32>(-1377f, -1199f))));

var<private> global1: vec3<f32>;

var<private> global2: array<f32, 29>;

var<private> global3: u32;

var<private> global4: u32 = 1u;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = u_input.b >> (u_input.c % 32u);
    return select(!(!arg_0.a), !(!vec4<bool>(any(arg_0.a.xz), true, global2[_wgslsmith_index_u32(9443u, 29u)] < global2[_wgslsmith_index_u32(4294967295u, 29u)], true)), any(select(vec3<bool>(arg_0.a.x, all(arg_0.a), true), select(!arg_0.a.wzx, arg_0.a.zwx, all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, true))), !arg_0.a.x)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> vec4<bool> {
    var var_0 = 1i;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, global2[_wgslsmith_index_u32(u_input.e.x, 29u)]) - global1.yz), _wgslsmith_f_op_vec2_f32(arg_2 + global1.yx)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yy)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-706f, -1000f))))));
    var var_2 = Struct_3(!(!select(vec4<bool>(arg_1.c.x, true, false, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_0, arg_3, arg_0), select(false, false, true))), var_1);
    var var_3 = reverseBits(vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.c)), ~_wgslsmith_mult_u32(u_input.c, u_input.e.x)), select(~(4294967295u >> (u_input.e.x % 32u)), min(_wgslsmith_div_u32(48707u, 1u), 1u), arg_3), abs(abs(u_input.c))));
    let var_4 = var_2.b.a;
    return var_2.a;
}

fn func_1(arg_0: u32) -> u32 {
    global4 = firstLeadingBit(_wgslsmith_mult_u32(~(~arg_0), countOneBits(~(4294967295u | arg_0))));
    var var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), func_2(global0[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, u_input.c), 29u)], _wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 37162u, 16454u), vec3<u32>(0u, 0u, 110255u))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), 0u > u_input.c)), func_3(_wgslsmith_f_op_f32(step(200f, -566f)) <= 234f, Struct_1(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), -1031f, select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -467f) - _wgslsmith_f_op_vec2_f32(ceil(global1.yx))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.e.x, 29u)] * -674f) >= global2[_wgslsmith_index_u32(4294967295u, 29u)]));
    var_0 = vec4<bool>(any(!(!(!vec3<bool>(var_0.x, var_0.x, true)))), true, func_3(func_2(Struct_3(vec4<bool>(true, var_0.x, true, var_0.x), Struct_2(vec2<f32>(1425f, global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.x)))), global2[_wgslsmith_index_u32(37971u, 29u)], firstLeadingBit(vec3<u32>(arg_0, arg_0, 60743u) | vec3<u32>(41195u, 1u, arg_0))).x, Struct_1(!select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), true), 582f, vec4<bool>(!var_0.x, true, false, !var_0.x)), global1.zz, var_0.x).x, true);
    var var_1 = _wgslsmith_mult_i32(reverseBits(-2682i), -1i);
    global2 = array<f32, 29>();
    return ~countOneBits(select(u_input.e.x, 0u, !(!var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = max(reverseBits(0u), ~77662u);
    let var_0 = vec3<u32>(0u, _wgslsmith_clamp_u32(~((u_input.c & 4294967295u) | _wgslsmith_add_u32(u_input.c, u_input.e.x)), u_input.c, 4294967295u), max(func_1(u_input.c), _wgslsmith_mod_u32(~(77453u << (u_input.c % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e.x, 0u), abs(vec2<u32>(3568u, 33839u))))));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec3_u32((abs(vec3<u32>(1u, u_input.e.x, u_input.e.x)) ^ var_0) << (vec3<u32>(u_input.e.x << (var_0.x % 32u), u_input.e.x, ~1u) % vec3<u32>(32u)), ~vec3<u32>(~16103u, 1u, 1u)));
    let var_2 = !(!func_3(!any(vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-1000f * global2[_wgslsmith_index_u32(var_1.x, 29u)]), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-602f, global1.x) + vec2<f32>(global2[_wgslsmith_index_u32(0u, 29u)], -1436f)), vec2<f32>(-641f, 798f), vec2<bool>(true, false))), func_2(Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(global1.x, global1.x))), -588f, _wgslsmith_div_f32(836f, 698f), firstLeadingBit(var_1)).x).wyy);
    global0 = array<Struct_3, 26>();
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.d.zy), _wgslsmith_mod_vec2_i32(abs(~firstLeadingBit(u_input.a)), vec2<i32>(select(u_input.a.x, max(u_input.a.x, u_input.b), true), firstLeadingBit(-2147483647i))), 0i);
}

