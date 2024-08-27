struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: bool) -> vec4<u32> {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(20552i), 2147483647i), -u_input.a, 0i & u_input.b, arg_1.x ^ arg_1.x);
    let var_1 = arg_0;
    return _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.a, _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.d, 1u, arg_0.a.x, 0u), arg_0.a), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(41877u, 94635u, 30521u, 7516u)), arg_0.a))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~11534u, u_input.e, firstLeadingBit(var_1.a.x), arg_0.a.x | 1u), var_1.a >> (~vec4<u32>(1u, 4294967295u, u_input.c.x, var_1.a.x) % vec4<u32>(32u))), (min(arg_0.a, vec4<u32>(arg_0.a.x, var_1.a.x, var_1.a.x, 0u)) << (countOneBits(vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, arg_0.a.x)) % vec4<u32>(32u))) & ~vec4<u32>(u_input.c.x, var_1.a.x, arg_0.a.x, u_input.c.x), var_1.a));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = !any(!select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), arg_0), true));
    let var_1 = 1u;
    var var_2 = Struct_1(_wgslsmith_add_vec4_u32(~(vec4<u32>(var_1, u_input.e, var_1, u_input.d) >> (vec4<u32>(var_1, 1915u, var_1, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(13242u, var_1, var_1, u_input.d), func_3(Struct_1(vec4<u32>(4294967295u, 45543u, var_1, 1u)), countOneBits(vec3<i32>(u_input.a, u_input.b, -1i)), select(arg_0, var_0, false), true))));
    var_2 = Struct_1(var_2.a);
    let var_3 = Struct_1(var_2.a);
    return _wgslsmith_f_op_f32(floor(898f));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -767f) + _wgslsmith_f_op_f32(f32(-1f) * -851f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1120f * -436f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1126f)), _wgslsmith_f_op_f32(round(-1059f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1242f) * _wgslsmith_f_op_f32(func_2(true))));
    let var_1 = vec2<u32>(~(~reverseBits(~arg_0)), 0u);
    var var_2 = _wgslsmith_add_vec2_u32(~reverseBits(u_input.c.zy), u_input.c.zx);
    var var_3 = arg_1;
    var var_4 = true;
    return StorageBuffer(~(~abs(var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(0u, Struct_1(abs(countOneBits(vec4<u32>(22643u, u_input.c.x, u_input.d, u_input.e)))));
}

