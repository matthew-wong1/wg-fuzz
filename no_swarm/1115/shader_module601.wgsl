struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(-958f, 1000f);

var<private> global3: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(0i, 5808i, i32(-2147483648)), vec3<i32>(7549i, 23207i, 44511i), vec3<i32>(-36349i, -36763i, -1i), vec3<i32>(2534i, 1i, 2147483647i), vec3<i32>(35315i, -20120i, 1i), vec3<i32>(i32(-2147483648), 0i, -9896i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, -34583i, 1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = select(select(select(select(vec3<bool>(global0.x, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true)), global0.x), !select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, false)), any(select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, global0.x)))), vec3<bool>(!any(vec3<bool>(global0.x, false, global0.x)), true, all(global0.zy)), vec3<bool>(!(u_input.c.x <= u_input.c.x), true, global0.x)), select(select(select(vec3<bool>(global0.x, false, false), vec3<bool>(true, true, true), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(!global0.x, false, false | global0.x), any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, true, global0.x)))), !select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, global0.x), false), vec3<bool>(global0.x, global0.x, false), any(global0.xx)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, global0.x, global0.x), any(vec2<bool>(false, global0.x))), vec3<bool>(global0.x, global0.x, false & global0.x), vec3<bool>(global0.x, global0.x, true))), true);
    global3 = array<vec3<i32>, 8>();
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(i32(-1i) * -14293i), u_input.a), abs(u_input.a)) > ~(-u_input.a);
    let var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~u_input.b.x, 73020u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c.x, 28907u, 78150u, u_input.b.x)), vec4<u32>(u_input.c.x, 44960u, 4294967295u, 46507u))), u_input.b.yx ^ u_input.c.xy);
    var var_3 = Struct_1(arg_0.a);
    return global2.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global1 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1.a))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_1.a.x, arg_1.a.x, global1.a.x) * vec4<f32>(-256f, 970f, global1.a.x, 666f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1195f, arg_1.a.x, global1.a.x, -615f) * vec4<f32>(var_0, -816f, 273f, 1000f))))))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)));
    return Struct_1(vec4<f32>(631f, _wgslsmith_div_f32(global1.a.x, var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(global1.a.x, -243f, -1000f, -449f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1608f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = !(!(!any(!vec4<bool>(global0.x, false, global0.x, global0.x))));
    var_0 = select(all(select(global0.xz, vec2<bool>(u_input.b.x == 1u, true), global0.zz)), global0.x, false);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 1000f, global1.a.x, _wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(min(arg_3.a.x, global2.x)), true || global0.x)))));
    global3 = array<vec3<i32>, 8>();
    var_0 = !(global0.x & global0.x);
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-480f, _wgslsmith_div_f32(arg_2.a.x, arg_3.a.x))));
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = arg_0;
    global2 = _wgslsmith_f_op_vec2_f32(min(global1.a.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, _wgslsmith_f_op_f32(-2336f * 772f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(arg_0, 1i, Struct_1(global1.a), func_2(global0.x, Struct_1(vec4<f32>(-1000f, -1368f, -2126f, 1293f))))))))));
    global0 = vec3<bool>(any(select(vec2<bool>(true && global0.x, global0.x && global0.x), vec2<bool>(global0.x, true), !any(vec4<bool>(true, true, global0.x, global0.x)))), !(!select(any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x && global0.x, false)), true);
    var var_0 = func_2(false, arg_0);
    var_0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - 221f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(727f, -1080f) - -2287f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, global1.a.x, -388f) - global1.a)));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(func_1(Struct_1(_wgslsmith_div_vec4_f32(global1.a, vec4<f32>(global1.a.x, -329f, global1.a.x, global2.x)))), true, (u_input.a & _wgslsmith_sub_i32(u_input.a, u_input.a)) >= 2147483647i);
    let var_0 = false;
    global0 = select(!(!(!(!vec3<bool>(false, true, var_0)))), vec3<bool>(func_1(func_2(true, Struct_1(global1.a))), var_0, !(any(vec3<bool>(var_0, true, var_0)) && any(global0.zy))), select(select(!select(vec3<bool>(true, global0.x, false), vec3<bool>(true, global0.x, false), global0.x), vec3<bool>(u_input.b.x > u_input.b.x, var_0, true), select(vec3<bool>(false, false, var_0), vec3<bool>(true, true, true), vec3<bool>(false, var_0, true))), select(select(!vec3<bool>(false, false, global0.x), vec3<bool>(true, true, true), select(true, false, false)), select(select(vec3<bool>(var_0, var_0, global0.x), vec3<bool>(false, global0.x, true), true), vec3<bool>(global0.x, false, var_0), all(vec3<bool>(var_0, global0.x, global0.x))), global0.x), !any(global0.yz)));
    var var_1 = select(!(!(!select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(false, global0.x, var_0, global0.x), global0.x))), select(vec4<bool>(any(select(vec4<bool>(var_0, global0.x, false, var_0), vec4<bool>(false, var_0, var_0, true), false)), false, var_0, u_input.a <= u_input.a), !vec4<bool>(any(vec4<bool>(var_0, false, true, true)), false, any(vec3<bool>(true, global0.x, var_0)), global0.x), select(vec4<bool>(true, any(vec3<bool>(false, true, true)), false, any(vec3<bool>(var_0, var_0, false))), select(!vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, var_0, true, var_0), !vec4<bool>(var_0, global0.x, global0.x, var_0)), true)), !vec4<bool>(true, all(global0.zx), any(!global0.zx), false));
    var_1 = !(!(!(!vec4<bool>(false, false, global0.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec3_f32(-global1.a.wwz));
}

