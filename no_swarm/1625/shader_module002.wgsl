struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 14>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(56498u, 6976u, 0u));

var<private> global4: f32 = 2040f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = vec4<f32>(888f, global0[_wgslsmith_index_u32(global3.a.x, 30u)], 1365f, 1000f);
    return vec3<bool>(true, false & ((-arg_2.x > (i32(-1i) * -2147483647i)) & all(vec4<bool>(true, true, false, false))), true);
}

fn func_2(arg_0: vec3<bool>) -> vec3<u32> {
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~global3.a.x, max(1u, 1u << (1u % 32u))), reverseBits(~global3.a.x), _wgslsmith_clamp_u32(global3.a.x, 4294967295u, firstTrailingBit(~global3.a.x))), 14u)];
    var var_0 = select(!func_3(Struct_1(~global3.a), Struct_1(vec3<u32>(81011u, 35148u, 4294967295u) >> (vec3<u32>(global3.a.x, 11295u, 4667u) % vec3<u32>(32u))), -vec2<i32>(7192i, u_input.b)), arg_0, !(arg_0.x & ((true || arg_0.x) | true)));
    let var_1 = !vec4<bool>(u_input.b >= select(26665i, u_input.a.x, any(vec4<bool>(arg_0.x, arg_0.x, var_0.x, true))), !(var_0.x & var_0.x) | any(select(arg_0, vec3<bool>(false, false, var_0.x), arg_0)), true, any(select(vec4<bool>(var_0.x, var_0.x, arg_0.x, true), vec4<bool>(false, false, false, false), vec4<bool>(arg_0.x, true, var_0.x, var_0.x))) & any(select(vec2<bool>(var_0.x, true), vec2<bool>(arg_0.x, var_0.x), arg_0.xz)));
    global3 = global2[_wgslsmith_index_u32(firstLeadingBit(global3.a.x), 14u)];
    var_0 = vec3<bool>(all(select(var_1.zwy, vec3<bool>(false, true, any(vec2<bool>(var_0.x, var_1.x))), global0[_wgslsmith_index_u32(~0u, 30u)] > -1183f)), true, false);
    return global3.a;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global1 = ~_wgslsmith_sub_u32(global3.a.x, global3.a.x);
    global3 = Struct_1(_wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.a.x, global3.a.x, 1u), vec3<u32>(0u, 1u, global3.a.x), vec3<u32>(global3.a.x, global3.a.x, global3.a.x)), vec3<u32>(global3.a.x, 4294967295u, global3.a.x) >> (select(vec3<u32>(global3.a.x, global3.a.x, global3.a.x), global3.a, true) % vec3<u32>(32u))) ^ ~func_2(vec3<bool>(true, false, true)));
    var var_0 = !(16614u <= ~firstTrailingBit(_wgslsmith_clamp_u32(global3.a.x, global3.a.x, 3462u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1079f, arg_1)))))));
    var var_2 = select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, func_3(global2[_wgslsmith_index_u32(1u, 14u)], Struct_1(~vec3<u32>(global3.a.x, 19818u, global3.a.x)), _wgslsmith_mult_vec2_i32(u_input.a.wx, u_input.a.yz)).x), select(!vec4<bool>(true, all(vec4<bool>(true, false, true, true)), false, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), !vec4<bool>(false, u_input.b < -2147483647i, true, true)), -652f != global0[_wgslsmith_index_u32(~(1u << (~global3.a.x % 32u)), 30u)]);
    return global2[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(~(~global3.a.xz), global3.a.zy)), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(reverseBits(vec3<i32>(u_input.a.x, -reverseBits(18078i), min(u_input.a.x, u_input.a.x))), u_input.a.yzw & _wgslsmith_mult_vec3_i32(u_input.a.xxw, reverseBits(-vec3<i32>(u_input.b, u_input.b, u_input.a.x))));
    var var_1 = func_1(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1265f));
    var var_2 = Struct_2(!any(vec2<bool>(true, true)), -(select(vec2<i32>(var_0.x, 2147483647i), select(var_0.zx, vec2<i32>(var_0.x, u_input.a.x), vec2<bool>(true, false)), true) ^ vec2<i32>(_wgslsmith_mult_i32(u_input.b, 10539i), -1i)));
    var var_3 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(var_1.a.x), 30u)]), 1u, -(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-35786i, var_2.b.x, 2147483647i, var_0.x)), u_input.a, vec4<i32>(-29843i, var_2.b.x, var_0.x, -44366i)) >> (select(firstLeadingBit(vec4<u32>(var_1.a.x, 0u, var_1.a.x, 4294967295u)), firstTrailingBit(vec4<u32>(56696u, var_1.a.x, var_1.a.x, var_1.a.x)), true) % vec4<u32>(32u))));
}

