struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: vec3<f32> = vec3<f32>(579f, 962f, -342f);

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(-7251i), Struct_1(-4575i), Struct_1(27259i), Struct_1(1i), Struct_1(38957i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(9112i), Struct_1(11471i), Struct_1(0i), Struct_1(0i), Struct_1(1i), Struct_1(36491i), Struct_1(1i), Struct_1(-1i), Struct_1(30832i), Struct_1(-4511i), Struct_1(i32(-2147483648)), Struct_1(-1i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = true;
    var var_1 = arg_1;
    global2 = global4[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(~1u, countOneBits(0u)), firstTrailingBit(abs(~vec2<u32>(1u, 23829u))))), 19u)];
    let var_2 = Struct_1(_wgslsmith_div_i32(arg_0.a << (~(~4294967295u) % 32u), -1i));
    var var_3 = select(select(vec4<bool>(false, any(vec2<bool>(false, false)), global0.x, global0.x), !(!select(vec4<bool>(true, true, false, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true))), !select(global0.x, global0.x, all(vec4<bool>(global0.x, global0.x, false, false)))), vec4<bool>(all(select(select(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, false, global0.x)), !vec4<bool>(false, true, false, global0.x))), global0.x, true, true), !(!(!vec4<bool>(global0.x, global0.x, global0.x, false))));
    return select(!vec4<bool>(global0.x, all(!vec4<bool>(false, var_3.x, var_3.x, var_3.x)), var_3.x, false), select(select(vec4<bool>(global0.x, true, !var_3.x, global0.x), select(select(vec4<bool>(true, false, global0.x, var_3.x), vec4<bool>(var_3.x, false, true, global0.x), vec4<bool>(var_3.x, true, true, global0.x)), select(vec4<bool>(var_3.x, false, global0.x, false), vec4<bool>(true, false, global0.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, false)), true), global0.x), !select(vec4<bool>(var_3.x, global0.x, true, var_3.x), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, true, global0.x, true), var_3.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, var_3.x, var_3.x, var_3.x), global0.x)), 1u <= select(1u, 1u, var_1.a != -1i)), vec4<bool>(true, global0.x, _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(-arg_2), true)) <= -1384f, global0.x));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_div_i32(~(i32(-1i) * -29842i), 69244i));
    let var_0 = Struct_1(global2.a);
    let var_1 = vec3<bool>(false, !any(func_3(Struct_1(-63699i), Struct_1(-2147483647i), _wgslsmith_f_op_f32(-arg_0))), firstTrailingBit(10949i) <= global2.a);
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-431f, 1078f), _wgslsmith_f_op_f32(floor(-298f)), _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(827f, global1.x, arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 250f, arg_0), vec3<f32>(arg_0, -1185f, global1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 292f, arg_0) - vec3<f32>(arg_0, arg_0, -844f)), var_1)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(-1103f + global1.x), 1045f)))));
    var var_2 = !func_3(Struct_1(global3.a), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-113f)))).xy;
    return global4[_wgslsmith_index_u32(~0u, 19u)];
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = abs(vec3<u32>(~1u, ~select(~3166u, 4294967295u, global0.x), arg_0.x));
    var var_1 = any(arg_3.zzy);
    let var_2 = arg_2.x;
    var var_3 = ~(-48788i) >> (((~4294967295u | arg_0.x) & arg_0.x) % 32u);
    var var_4 = global0.x;
    return ~(2147483647i & _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), var_2, ~u_input.a));
}

fn func_1() -> vec2<f32> {
    let var_0 = vec3<bool>(all(select(global0.zx, vec2<bool>(global0.x, !global0.x), vec2<bool>(false, global0.x & global0.x))), true, true);
    let var_1 = Struct_1(i32(-1i) * -func_4(firstTrailingBit(vec2<u32>(4142u, 54959u)), func_2(-1272f, vec4<bool>(true, var_0.x, global0.x, false), global0.x), vec3<i32>(u_input.a, global2.a, 33550i), vec4<bool>(global0.x, true, global0.x, global0.x)));
    global2 = Struct_1(1i);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(789f, global1.x, 1193f) - vec3<f32>(global1.x, 162f, 753f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2656f, 727f, 1522f))))))));
    global4 = array<Struct_1, 19>();
    return vec2<f32>(407f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -418f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zy) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2159f, global1.x)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-596f, _wgslsmith_f_op_f32(global1.x + global1.x)))))));
    let var_1 = vec3<f32>(global1.x, 1397f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(step(-503f, _wgslsmith_div_f32(-339f, -1167f))))), _wgslsmith_f_op_f32(global1.x + var_0.x))));
    global0 = select(func_3(Struct_1(~global3.a ^ 0i), Struct_1(global2.a), _wgslsmith_f_op_f32(-var_1.x)).xxy, vec3<bool>(global0.x, global0.x, all(!func_3(Struct_1(global3.a), Struct_1(2147483647i), -1000f))), func_3(Struct_1(~global3.a), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1375f), select(vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, true, false, false)), all(vec4<bool>(true, true, false, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1193f))).xyx);
    global3 = Struct_1(u_input.a);
    let var_2 = ~(~(-26001i));
    var var_3 = func_2(-812f, vec4<bool>(!any(vec2<bool>(true, false)), true, global0.x, false), true);
    var var_4 = global0.zx;
    let var_5 = vec2<f32>(-930f, _wgslsmith_f_op_vec2_f32(func_1()).x);
    var var_6 = global4[_wgslsmith_index_u32(~(~(max(43834u, _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(28788u, 4294967295u, 4294967295u), vec3<u32>(1u, 20252u, 101677u)))), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1000f)), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-27386i, -26321i)) | ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global2.a), vec2<i32>(var_2, global3.a)), abs((global3.a >> (87224u % 32u)) >> (~35741u % 32u)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global3.a << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-21304i, var_3.a, 1i, 13040i), vec4<i32>(-37613i, 19079i, var_2, var_2))), _wgslsmith_div_i32(global2.a, 2147483647i)), ~abs(global3.a ^ var_2)));
}

