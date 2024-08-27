struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 23>;

var<private> global2: vec3<bool>;

var<private> global3: array<bool, 19>;

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> StorageBuffer {
    return StorageBuffer(abs(select(vec4<i32>(arg_2.b.x, arg_2.b.x, 6265i, u_input.a.x & 2147483647i), u_input.a, vec4<bool>(true, false & global2.x, false, 1000f >= arg_0))), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(max(u_input.a.x, 2147483647i)), u_input.e.x, -arg_2.b.x), select(u_input.a.xxz, _wgslsmith_add_vec3_i32(~u_input.a.zyz, u_input.a.wxz), select(!global3[_wgslsmith_index_u32(14005u, 19u)], global3[_wgslsmith_index_u32(~u_input.d.x, 19u)], global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) - -1409f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -635f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(531f)) * _wgslsmith_f_op_f32(abs(-223f)))))), (firstTrailingBit(vec4<u32>(u_input.d.x, u_input.c, 1734u, u_input.c)) | reverseBits(u_input.b)) >> (firstLeadingBit(reverseBits(vec4<u32>(9938u, u_input.d.x, 0u, 321u))) % vec4<u32>(32u)), Struct_1(~u_input.b.x, min(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 22174i) << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)), abs(vec2<i32>(-14464i, -2147483647i)), abs(vec2<i32>(u_input.a.x, u_input.a.x))), u_input.a.xw)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-533f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) - _wgslsmith_f_op_f32(abs(1405f))), -1039f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(699f, 849f))));
}

