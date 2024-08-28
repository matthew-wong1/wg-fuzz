struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0.a;
    let var_1 = all(select(vec4<bool>(_wgslsmith_mod_u32(arg_0.b.x, 33316u) <= (u_input.a.x ^ 4506u), !any(vec4<bool>(arg_0.c, false, true, false)), arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, any(select(vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, true), false)), arg_0.c), arg_0.c));
    let var_2 = vec3<bool>(!var_1, var_1, !(!all(select(vec2<bool>(false, var_1), vec2<bool>(arg_0.c, false), var_1))));
    var var_3 = u_input.a.zz;
    var_3 = ~vec2<u32>(var_3.x, _wgslsmith_mult_u32(countOneBits(firstTrailingBit(1u)), var_3.x));
    return 18611i << (_wgslsmith_mod_u32(~arg_0.b.x, arg_0.b.x) % 32u);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: f32) -> vec2<u32> {
    let var_0 = -1i;
    var var_1 = Struct_1(arg_2, (u_input.a.zw ^ firstTrailingBit(u_input.a.xw)) & (u_input.a.zw >> (_wgslsmith_mod_vec2_u32(u_input.a.yz, ~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), all(vec2<bool>(true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(398f, var_1.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-558f, var_1.a) - vec2<f32>(-181f, -780f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, var_1.a)), false)), vec2<bool>(true, any(vec3<bool>(true, true, var_1.c)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * arg_2) - _wgslsmith_f_op_f32(var_1.a + arg_2))), 428f), vec2<bool>(var_1.c, var_1.c)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1000f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a, -258f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(-631f, 567f))))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-var_3.x), ~_wgslsmith_div_vec2_u32(~max(var_1.b, u_input.a.zw), max(vec2<u32>(var_1.b.x, var_1.b.x), vec2<u32>(u_input.b, arg_1))), any(select(!(!vec3<bool>(var_1.c, true, false)), vec3<bool>(!var_1.c, var_1.c && var_1.c, true), firstLeadingBit(var_0) >= arg_0)));
    return vec2<u32>(var_4.b.x, _wgslsmith_mod_u32(var_4.b.x, 44779u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f)), vec2<u32>(1u, arg_2.b.x), arg_3.x);
    var var_1 = Struct_1(-264f, min(arg_2.b, vec2<u32>(var_0.b.x, ~u_input.b)), !arg_2.c);
    var var_2 = var_0.c;
    var var_3 = Struct_1(arg_2.a, abs(func_4(func_3(Struct_1(1621f, arg_2.b, true)) | -2147483647i, countOneBits(_wgslsmith_dot_vec3_u32(u_input.a.xzy, u_input.a.xwx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, 747f)) * _wgslsmith_f_op_f32(f32(-1f) * -1014f)))), any(vec2<bool>(any(!arg_1), true)));
    var_2 = false;
    return -_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(2147483647i ^ arg_0.x, _wgslsmith_dot_vec3_i32(arg_0.zxw, vec3<i32>(1i, -4629i, arg_0.x))), _wgslsmith_mult_i32(arg_0.x, -31890i)), vec2<i32>(select(_wgslsmith_add_i32(27739i, 5427i), _wgslsmith_add_i32(-12280i, arg_0.x), all(vec2<bool>(arg_1.x, var_1.c))), 40236i), vec2<i32>(arg_0.x, -countOneBits(arg_0.x)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> bool {
    let var_0 = all(!select(vec4<bool>(false, true, arg_0.c, arg_0.c), !vec4<bool>(false, arg_0.c, true, true), vec4<bool>(false, true, true, arg_0.c))) & true;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1754f)))), 610f, !arg_0.c));
    var var_2 = Struct_1(-745f, countOneBits(arg_0.b), all(!(!vec3<bool>(false, true, var_0))));
    var var_3 = arg_0;
    var var_4 = -min(arg_2.x, _wgslsmith_clamp_i32(firstLeadingBit(firstTrailingBit(1i)), min(arg_3.x, arg_3.x), _wgslsmith_div_i32(2147483647i, arg_2.x) & arg_3.x));
    return false;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -786f), arg_1.a));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1859f, arg_1.a)), reverseBits(u_input.a.zx), false);
    var var_2 = true;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1795f)), arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1559f), _wgslsmith_f_op_f32(-1040f + var_1.a));
    var var_4 = ~(-vec3<i32>(-(~2147483647i), 1i, func_2(countOneBits(vec4<i32>(-5291i, -22352i, 27703i, -35383i)), select(vec3<bool>(arg_1.c, false, arg_0.x), arg_0, arg_0), arg_1, select(vec3<bool>(true, false, true), vec3<bool>(true, arg_2, arg_1.c), vec3<bool>(false, true, arg_1.c))).x));
    return Struct_1(_wgslsmith_f_op_f32(ceil(-967f)), vec2<u32>(arg_1.b.x, 4294967295u), arg_1.c);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_1(-930f, _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.b.x, select(u_input.a.x, arg_0.x, arg_3)), ~(vec2<u32>(13747u, u_input.b) << (arg_0.zx % vec2<u32>(32u)))), false);
    let var_1 = -1580f;
    var_0 = func_6(vec3<bool>(arg_3, func_5(arg_1, arg_2.a, vec2<i32>(2147483647i, 40822i) | func_2(vec4<i32>(2147483647i, -1i, -1i, 30299i), vec3<bool>(var_0.c, arg_3, arg_3), Struct_1(arg_1.a, vec2<u32>(u_input.b, arg_0.x), true), vec3<bool>(true, false, arg_3)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(73302i, -31719i, 2765i, -2147483647i), vec4<i32>(38580i, 1905i, -48388i, -41722i), vec4<i32>(-2147483647i, 967i, 98430i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-9499i, -25070i, -1277i, -2147483647i), vec4<i32>(-1i, 7695i, -1i, -2147483647i), vec4<i32>(-1i, 1i, -79519i, -79464i)), true)), !(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) >= firstTrailingBit(var_0.b.x))), Struct_1(var_1, vec2<u32>(reverseBits(abs(11371u)), _wgslsmith_add_u32(arg_0.x, arg_0.x) ^ ~arg_2.b.x), !any(vec3<bool>(true, arg_2.c, true)) || (_wgslsmith_f_op_f32(floor(-659f)) >= arg_2.a)), any(select(!(!vec2<bool>(true, arg_3)), select(!vec2<bool>(arg_1.c, arg_2.c), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(arg_3, arg_2.c)), false), vec2<bool>(var_0.c, all(vec3<bool>(arg_1.c, arg_3, false))))));
    var_0 = func_6(select(select(select(select(vec3<bool>(arg_2.c, arg_3, arg_3), vec3<bool>(var_0.c, true, true), arg_1.c), !vec3<bool>(arg_3, true, true), !vec3<bool>(arg_2.c, false, false)), vec3<bool>(arg_2.c, all(vec4<bool>(false, arg_3, arg_1.c, var_0.c)), false), !(arg_3 & true)), select(vec3<bool>(false, true, false), select(select(vec3<bool>(var_0.c, true, false), vec3<bool>(true, true, true), vec3<bool>(arg_1.c, true, true)), vec3<bool>(false, true, arg_3), any(vec2<bool>(arg_1.c, var_0.c))), !select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_3, arg_3, arg_2.c), vec3<bool>(false, arg_1.c, arg_2.c))), any(!(!vec3<bool>(arg_1.c, arg_2.c, false)))), Struct_1(_wgslsmith_f_op_f32(arg_2.a + 1775f), arg_0.yy & arg_0.zz, false), !(58754u > _wgslsmith_sub_u32(min(arg_2.b.x, var_0.b.x), 54912u)));
    var_0 = Struct_1(1017f, abs(vec2<u32>(1u, 0u) >> (select(arg_1.b, vec2<u32>(37879u, 16260u), vec2<bool>(true, false)) % vec2<u32>(32u))) >> (max(u_input.a.wx, select(arg_0.yx, u_input.a.yx, select(vec2<bool>(var_0.c, arg_2.c), vec2<bool>(false, arg_3), vec2<bool>(true, true)))) % vec2<u32>(32u)), arg_1.c);
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))))), _wgslsmith_f_op_f32(-528f - arg_1.a), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + -344f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_i32(countOneBits(countOneBits(-10762i)), 1i);
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a.x, 131199u, 17723u, u_input.b) ^ vec4<u32>(42687u, 1u, u_input.b, 1u)), u_input.a), 0u, _wgslsmith_sub_u32(max(firstTrailingBit(4294967295u), _wgslsmith_add_u32(u_input.a.x, 4294967295u)), _wgslsmith_mod_u32(~63348u, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -497f, 361f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(637f, -153f, -956f) + vec3<f32>(1412f, -438f, -1925f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-304f, 890f, 181f), vec3<f32>(1104f, -1989f, -457f)) + _wgslsmith_f_op_vec3_f32(func_1(var_1, Struct_1(-1996f, u_input.a.yx, true), Struct_1(647f, var_1.xz, false), true))))), true || !(!func_6(vec3<bool>(true, false, true), Struct_1(-510f, vec2<u32>(var_1.x, 0u), true), true).c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-1389f * var_2.x), 257f))), u_input.a);
}

