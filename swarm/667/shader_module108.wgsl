struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: vec4<u32> = vec4<u32>(27510u, 17359u, 38802u, 4294967295u);

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true, vec2<bool>(false, false), false), Struct_1(false, vec2<bool>(false, false), true), Struct_1(false, vec2<bool>(true, false), true), Struct_1(true, vec2<bool>(true, false), false), Struct_1(false, vec2<bool>(true, true), true), Struct_1(true, vec2<bool>(true, true), true), Struct_1(true, vec2<bool>(true, true), true), Struct_1(false, vec2<bool>(true, true), true), Struct_1(true, vec2<bool>(false, false), false), Struct_1(false, vec2<bool>(false, true), true), Struct_1(true, vec2<bool>(false, false), true), Struct_1(false, vec2<bool>(false, true), true), Struct_1(false, vec2<bool>(true, false), true), Struct_1(false, vec2<bool>(true, false), false), Struct_1(false, vec2<bool>(false, true), true), Struct_1(false, vec2<bool>(true, true), true), Struct_1(true, vec2<bool>(false, true), true), Struct_1(true, vec2<bool>(true, false), true), Struct_1(false, vec2<bool>(true, true), false), Struct_1(false, vec2<bool>(false, true), true), Struct_1(false, vec2<bool>(true, true), true), Struct_1(false, vec2<bool>(false, true), false), Struct_1(false, vec2<bool>(false, false), false), Struct_1(false, vec2<bool>(false, true), false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_dot_vec3_i32(u_input.a.zwz, vec3<i32>(1i, -12452i, -(~4352i))), _wgslsmith_f_op_f32(max(527f, _wgslsmith_f_op_f32(f32(-1f) * -1389f))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(global1.x), abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(global1.x, u_input.b.x), ~u_input.b.x))), 24u)]);
    return !(!(!select(vec3<bool>(true, false, var_0.a.a), vec3<bool>(false, false, false), var_0.c < 813f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = all(select(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 0u) >> (vec4<u32>(0u, 0u, u_input.b.x, global1.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(13336u, global1.x, u_input.b.x, 1u), vec4<u32>(1u, u_input.b.x, 26770u, global1.x))), 18u)], func_3(abs(u_input.a.zy)), select(!(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), vec3<bool>(all(vec4<bool>(true, true, false, false)), global1.x > 0u, arg_1.b.x), arg_1.a)));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.ww), u_input.a.xy), ~(-u_input.c) | u_input.a.x);
    var var_2 = global1.wx | max(vec2<u32>(144420u, 34731u), _wgslsmith_mult_vec2_u32(global1.xx, global1.zx));
    return 1i;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = !(!(!(!(!arg_0.a))));
    var var_1 = Struct_1(all(!arg_0.b), arg_0.b, !(_wgslsmith_f_op_f32(ceil(970f)) > _wgslsmith_f_op_f32(-295f * -240f)) | true);
    let var_2 = ~firstTrailingBit(~max(_wgslsmith_div_u32(18823u, 1u), ~1u));
    let var_3 = Struct_1(var_0, vec2<bool>(arg_0.b.x, !(firstLeadingBit(u_input.a.x) < min(-70172i, u_input.a.x))), var_1.c);
    var_1 = Struct_1(2502u >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, ~1u), ~select(vec3<u32>(4294967295u, var_2, 4294967295u), vec3<u32>(u_input.b.x, 0u, u_input.b.x), true)), var_3.b, 1i <= (func_2(Struct_1(var_0, var_3.b, var_3.c), var_3) ^ u_input.a.x));
    return 346f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(global1.zzx, vec3<u32>(~_wgslsmith_mult_u32(4294967295u, 1u), u_input.b.x, global1.x)));
    var var_1 = !(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    global0 = array<vec3<bool>, 18>();
    global1 = abs(~(~(~vec4<u32>(u_input.b.x, 1u, 62504u, 43365u))) ^ (((vec4<u32>(global1.x, 1u, 46488u, 32525u) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global1.x) % vec4<u32>(32u))) & reverseBits(vec4<u32>(global1.x, global1.x, 34113u, u_input.b.x))) | ~vec4<u32>(u_input.b.x, 81312u, 4294967295u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.b.x, 24u)])) - -145f));
}

