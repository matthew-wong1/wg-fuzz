struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_3;
    var var_1 = var_0.a.x;
    var_1 = var_0.a.x;
    var var_2 = arg_1;
    var_1 = !arg_3.a.x;
    return var_2.a;
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_1(!select(!var_0.a, vec3<bool>(var_0.a.x, select(true, arg_0.a.x, var_0.a.x), arg_0.a.x), !(arg_0.d != var_0.d)), var_0.b, -2727i, _wgslsmith_dot_vec4_i32(u_input.b >> (select(~vec4<u32>(u_input.a, u_input.a, 30460u, 1u), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 41988u)), var_0.a.x) % vec4<u32>(32u)), max(u_input.b, vec4<i32>(63406i, -2147483647i, -35761i, i32(-1i) * -18061i))));
    let var_1 = ~select(vec4<u32>(~u_input.a, 4294967295u, min(8483u, u_input.a), _wgslsmith_clamp_u32(11426u, 1u, 0u)), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) << (vec4<u32>(50342u, 4294967295u, 6794u, 1344u) % vec4<u32>(32u))) & ~vec4<u32>(u_input.a, 42343u, u_input.a, 69843u), any(vec4<bool>(-925f <= var_0.b, var_0.b == 1000f, any(vec4<bool>(true, false, false, var_0.a.x)), arg_0.c > u_input.b.x)));
    let var_2 = 4294967295u;
    var_0 = arg_0;
    return _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -827f));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = vec3<bool>(false, arg_2.a.x, arg_2.a.x);
    let var_1 = arg_2;
    var_0 = arg_1.a;
    var var_2 = !arg_1.a;
    var_0 = !var_1.a;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, -450f, 2119f, arg_2.b))), vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(step(arg_2.b, 839f)), arg_2.b, arg_2.b))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-803f, arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(146f, arg_1.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1313f)), 1000f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, 521f, -1240f, arg_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, 904f, 128f, arg_1.b)), false))))), var_1.a.x));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-701f, -1061f))), _wgslsmith_f_op_f32(f32(-1f) * -388f), -774f, 1f)) - _wgslsmith_f_op_vec4_f32(func_4(u_input.a, Struct_1(!func_2(vec4<u32>(u_input.a, u_input.a, 1u, 10125u), Struct_1(vec3<bool>(true, true, false), -316f, 1i, u_input.b.x), vec4<f32>(-1295f, 517f, -102f, 348f), Struct_1(vec3<bool>(false, true, false), 165f, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, false, false), -448f, 1i, -1i))))), 35484i, -1i), Struct_1(vec3<bool>(true, true, all(vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1127f, 790f), _wgslsmith_f_op_f32(ceil(-1223f)), any(vec4<bool>(false, false, false, false)))), _wgslsmith_dot_vec4_i32(vec4<i32>(51786i, u_input.b.x, u_input.b.x, u_input.b.x) & u_input.b, vec4<i32>(-17376i, 1i, u_input.b.x, u_input.b.x)), 1i), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-154f, 1856f)))), -2015f, -1077f))));
    let var_1 = vec2<f32>(-1027f, 593f);
    var var_2 = !(var_1.x != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(var_1.x))) + 1524f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.x, -1177f) * var_0.yxz) - vec3<f32>(709f, 153f, 698f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.wzy))) + _wgslsmith_f_op_vec3_f32(-var_0.wxy))));
    let var_4 = Struct_1(!vec3<bool>(false, !any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, true, true, true))), -466f, -u_input.b.x, -(u_input.b.x >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(6633u, u_input.a, u_input.a), vec3<u32>(14350u, 0u, 60023u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a))) % 32u)));
    return !all(select(var_4.a.xx, var_4.a.yz, var_4.a.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(select(vec3<bool>(all(vec2<bool>(true, true)), func_1(), !any(vec2<bool>(true, true))), vec3<bool>(true, true, true), select(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false)), true, !any(vec2<bool>(false, false)))), 1293f, -(~(-(u_input.b.x & u_input.b.x))), -1i);
    var_1 = Struct_1(var_1.a, -1000f, u_input.b.x, 2764i);
    var_1 = Struct_1(var_1.a, var_1.b, _wgslsmith_dot_vec3_i32(u_input.b.xxw, vec3<i32>(35175i, -2147483647i, -u_input.b.x)), -2147483647i);
    let var_2 = _wgslsmith_div_u32(~reverseBits(0u), ~53426u);
    var var_3 = Struct_1(select(vec3<bool>(all(vec4<bool>(var_1.a.x, var_1.a.x, true, false)) && true, var_1.a.x, true), func_2(abs(~vec4<u32>(u_input.a, u_input.a, 4294967295u, var_2)), Struct_1(!vec3<bool>(var_1.a.x, var_1.a.x, false), 572f, firstTrailingBit(-59421i), var_1.c), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b, var_1.b, var_1.b, -1382f))), Struct_1(!vec3<bool>(var_1.a.x, var_1.a.x, false), -263f, -var_1.d, _wgslsmith_dot_vec3_i32(u_input.b.xzz, u_input.b.zzx))), !func_2(select(vec4<u32>(u_input.a, 4294967295u, 1u, 30448u), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), false), Struct_1(var_1.a, var_1.b, u_input.b.x, u_input.b.x), vec4<f32>(var_1.b, -1788f, 2009f, var_1.b), Struct_1(var_1.a, var_1.b, 1i, 1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-201f))), -1021f)), _wgslsmith_div_i32(var_1.d, var_1.c), max((i32(-1i) * -u_input.b.x) ^ firstLeadingBit(u_input.b.x), ~var_1.d));
    var var_4 = ~abs(abs(abs(vec3<u32>(u_input.a, u_input.a, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b, var_3.b, var_3.b, var_1.b))))), ~(~countOneBits(var_4.x)), _wgslsmith_clamp_vec4_i32(select(abs(~vec4<i32>(-48867i, var_3.c, var_3.c, 2147483647i)), _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(var_1.d, 71062i, -2147483647i, var_1.c)), !var_3.a.x), u_input.b, firstTrailingBit(vec4<i32>(-1i) * -u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1422f, var_3.b, var_3.b, -230f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, 610f, var_1.b, 270f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_3.b, -774f, var_3.b))))) * vec4<f32>(-651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), -578f, _wgslsmith_f_op_f32(exp2(var_3.b)))));
}

