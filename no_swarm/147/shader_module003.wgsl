struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec3<f32>(204f, 949f, 829f), vec3<bool>(true, false, true), 1375f);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 1u, 1980u, 12122u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    global0 = Struct_1(global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), vec3<bool>(global1.x, true, global1.x), global0.b.x);
    let var_0 = vec4<bool>(!(true != global0.a.x), all(!global0.a.yy), global0.a.x, false);
    return select(u_input.c, global2.yx, true);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.c, _wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, global0.b.x, global0.b.x) * global0.b))), vec3<bool>(global0.a.x & (45765u <= ~u_input.d), true, all(!(!global0.a))), global0.d);
    let var_1 = Struct_4(var_0);
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.c.x, 38730u)), ~select(vec2<u32>(global2.x, u_input.c.x), vec2<u32>(u_input.c.x, 4294967295u), global0.c.xy)), ~func_3()) & ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(global2.wx, vec2<u32>(u_input.c.x, 4294967295u)), global2.yz);
    return Struct_1(global0.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.b.x, global0.b.x, var_0.d), var_0.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.d, var_1.a.b.x, -1221f))))), var_1.a.b)), select(select(var_0.c, !vec3<bool>(true, true, var_0.a.x), !(!vec3<bool>(global1.x, false, global1.x))), var_0.c, global0.a), _wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d))) + 1956f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<i32>) -> bool {
    global0 = func_2();
    var var_0 = select(!(!global0.c), !vec3<bool>(_wgslsmith_f_op_f32(global0.d - -238f) >= _wgslsmith_f_op_f32(-1000f - -622f), all(!vec4<bool>(global1.x, true, false, false)), false), vec3<bool>(true, select(all(!vec4<bool>(global1.x, global0.a.x, true, global0.a.x)), func_2().c.x, false), !all(global0.c) | false));
    let var_1 = arg_0;
    var var_2 = Struct_3(Struct_2(select(vec3<bool>(true, false, all(global0.a.zx)), !select(global0.c, vec3<bool>(false, false, false), vec3<bool>(true, global0.a.x, arg_1.x)), global0.c)), func_2());
    var var_3 = arg_2;
    return true;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: f32, arg_3: vec4<u32>) -> bool {
    global1 = select(select(vec2<bool>(arg_0.a <= 1i, -881f >= _wgslsmith_f_op_f32(min(-409f, arg_0.b))), global0.a.zy, arg_1.c), global0.c.zy, !arg_0.c);
    let var_0 = arg_1.c;
    var var_1 = func_2();
    let var_2 = arg_0;
    let var_3 = ~reverseBits(firstTrailingBit(-1i));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!global0.a.xx, vec2<bool>(true, func_4(Struct_5(~(-2147483647i), 126f, func_1(vec3<i32>(1i, -36265i, 39972i), vec2<bool>(global1.x, true), global2.x, vec2<i32>(53226i, -2147483647i))), Struct_5(-20357i, _wgslsmith_f_op_f32(global0.b.x - global0.d), false), 358f, min(vec4<u32>(4294967295u, global2.x, 48228u, global2.x), vec4<u32>(u_input.b, global2.x, 30641u, 30557u)))), true);
    var var_0 = Struct_2(global0.a);
    var var_1 = min(abs(~firstTrailingBit(7407u)), global2.x) <= 4294967295u;
    let var_2 = ~(i32(-1i) * -_wgslsmith_clamp_i32(countOneBits(33682i), -2432i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(-203f);
}

