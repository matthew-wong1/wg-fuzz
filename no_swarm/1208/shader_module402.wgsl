struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 11>;

var<private> global2: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global3: vec4<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = global2.x;
    var var_1 = min(~(vec3<u32>(0u << (1u % 32u), global0.a.b.x & u_input.c, global2.x & global0.a.b.x) << (global0.a.b % vec3<u32>(32u))), global0.a.b);
    return vec2<u32>(~firstTrailingBit(reverseBits(global2.x)), u_input.a);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<u32> {
    global1 = array<Struct_2, 11>();
    let var_0 = select(vec4<bool>(global0.a.a, true, all(vec2<bool>(true && global0.a.a, true)), true & all(vec2<bool>(arg_0.a.a, global0.a.a))), vec4<bool>(true, !global3.x, arg_2.a.a, true), vec4<bool>(global3.x, arg_0.a.a, arg_2.a.a || true, false));
    let var_1 = arg_0;
    global0 = Struct_2(Struct_1(false & global0.a.a, _wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, 1u, 1u), ~vec3<u32>(var_1.a.b.x, global0.a.b.x, arg_3.x) | firstTrailingBit(vec3<u32>(arg_1.a.b.x, var_1.a.b.x, 26020u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(arg_1.a.c)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.a.c - vec4<f32>(567f, global0.a.c.x, global0.a.c.x, -207f)))))));
    var var_2 = u_input.c;
    return arg_3.xx;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = global0.a.c.x;
    global1 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(4865u, 35682u)), _wgslsmith_mult_vec2_u32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.b.x, 9141u, 0u), global0.a.b), ~u_input.c), 11u)], Struct_2(global0.a), Struct_2(Struct_1(true, global0.a.b, global0.a.c)), arg_2.a.b), _wgslsmith_mod_vec2_u32(arg_1.b.zx, ~arg_2.a.b.zx & abs(vec2<u32>(1u, 4294967295u)))));
    let var_2 = Struct_2(Struct_1(!arg_1.a, arg_1.b ^ firstTrailingBit(_wgslsmith_clamp_vec3_u32(global0.a.b, arg_2.a.b, vec3<u32>(61612u, 46291u, arg_2.a.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1266f, _wgslsmith_f_op_f32(global0.a.c.x + global0.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(f32(-1f) * -830f)) * _wgslsmith_f_op_vec4_f32(global0.a.c + vec4<f32>(108f, 470f, global0.a.c.x, arg_1.c.x)))));
    var var_3 = false;
    return StorageBuffer(_wgslsmith_f_op_f32(round(1f)), var_2.a.c.zzw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(438f)) - _wgslsmith_f_op_f32(global0.a.c.x + -703f))))), 382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.x) * -610f), _wgslsmith_f_op_f32(global0.a.c.x - _wgslsmith_f_op_f32(floor(-2190f))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -780f, 962f, global0.a.c.x) - _wgslsmith_f_op_vec4_f32(global0.a.c * vec4<f32>(-1051f, -213f, var_0.x, -2939f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.c))))));
    global2 = min(vec2<u32>(~global2.x, _wgslsmith_dot_vec2_u32(global0.a.b.zy | ~vec2<u32>(global0.a.b.x, 0u), func_1(any(global3.zwz), _wgslsmith_dot_vec3_u32(vec3<u32>(21058u, u_input.c, 41902u), vec3<u32>(4055u, 84617u, 15197u)), vec4<i32>(u_input.b, u_input.b, u_input.b, 27317i)))), _wgslsmith_sub_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(func_1(false, 4294967295u, vec4<i32>(u_input.b, -5363i, -94777i, -1611i)), global0.a.b.yz)), global0.a.b.yx));
    global2 = global0.a.b.zz;
    var var_1 = var_0.x;
    var var_2 = global0.a;
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), global0.a, global1[_wgslsmith_index_u32(~(~8746u), 11u)]);
}

