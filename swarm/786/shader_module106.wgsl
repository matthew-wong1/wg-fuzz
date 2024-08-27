struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true, vec3<i32>(21650i, i32(-2147483648), -15664i), 26082i, false, 5700u), Struct_1(true, vec3<i32>(1i, 43061i, -1i), 1i, true, 46015u), Struct_1(false, vec3<i32>(-20782i, 37087i, -1i), -12582i, true, 40200u), Struct_1(true, vec3<i32>(22034i, 11212i, 2147483647i), -70567i, true, 66705u), Struct_1(false, vec3<i32>(0i, 12460i, 1i), 15203i, true, 1u), Struct_1(false, vec3<i32>(0i, 19993i, 23784i), 8455i, true, 1u), Struct_1(true, vec3<i32>(26461i, -17264i, 86436i), 0i, true, 20537u), Struct_1(false, vec3<i32>(-10275i, 2147483647i, -52094i), -35338i, true, 0u), Struct_1(true, vec3<i32>(0i, 18111i, -1i), 2147483647i, false, 0u), Struct_1(false, vec3<i32>(1412i, 2147483647i, 2147483647i), 0i, false, 1u), Struct_1(true, vec3<i32>(-37287i, -1i, -1i), -38305i, true, 22487u), Struct_1(true, vec3<i32>(38504i, 15202i, -52325i), -1i, true, 4294967295u), Struct_1(false, vec3<i32>(-67561i, 19603i, -1707i), 2147483647i, true, 7987u), Struct_1(false, vec3<i32>(-31349i, 2147483647i, 2147483647i), -44318i, true, 47458u), Struct_1(true, vec3<i32>(-3383i, 2147483647i, i32(-2147483648)), 24517i, false, 0u));

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 12346u, 4294967295u);

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, vec3<i32>(1i, 67879i, -20522i), 2147483647i, true, 11681u), Struct_1(false, vec3<i32>(-53755i, -1i, -1i), -4309i, false, 0u), Struct_1(false, vec3<i32>(0i, 8161i, -1i), -14920i, true, 29216u), Struct_1(true, vec3<i32>(i32(-2147483648), 45141i, i32(-2147483648)), -14924i, false, 2116u), Struct_1(true, vec3<i32>(2147483647i, i32(-2147483648), -32544i), 0i, true, 54985u), Struct_1(true, vec3<i32>(1i, -1i, 1i), 0i, true, 1u), Struct_1(true, vec3<i32>(-1i, 1i, -269i), 1i, false, 74552u), Struct_1(false, vec3<i32>(-51070i, 17613i, -22914i), 1i, true, 9512u), Struct_1(true, vec3<i32>(0i, 14666i, -22303i), 1i, true, 1u), Struct_1(true, vec3<i32>(-1i, i32(-2147483648), 0i), 0i, true, 1u), Struct_1(true, vec3<i32>(2147483647i, 7291i, 1i), 0i, true, 4294967295u), Struct_1(true, vec3<i32>(1i, -40411i, i32(-2147483648)), 6310i, true, 1u), Struct_1(true, vec3<i32>(2147483647i, 4108i, -27613i), -1i, false, 0u), Struct_1(true, vec3<i32>(1i, -42902i, 4693i), -1i, false, 0u), Struct_1(false, vec3<i32>(0i, 18207i, -1i), i32(-2147483648), true, 52242u), Struct_1(false, vec3<i32>(2147483647i, 43290i, 2147483647i), 38807i, true, 0u), Struct_1(true, vec3<i32>(-1i, 55937i, 12925i), i32(-2147483648), true, 14374u), Struct_1(true, vec3<i32>(1i, 5287i, 40970i), 1i, true, 4294967295u), Struct_1(true, vec3<i32>(0i, -1i, 21687i), 3279i, true, 4294967295u), Struct_1(false, vec3<i32>(10096i, 31851i, 0i), -41914i, false, 4294967295u), Struct_1(true, vec3<i32>(-1i, i32(-2147483648), 21559i), 57045i, true, 1u), Struct_1(true, vec3<i32>(2147483647i, 33558i, 16677i), 45421i, false, 16597u), Struct_1(true, vec3<i32>(-1i, 62092i, -15728i), 33753i, true, 4294967295u), Struct_1(false, vec3<i32>(-7816i, 1i, 2147483647i), -1i, true, 84987u), Struct_1(true, vec3<i32>(10425i, 45813i, -22420i), 2147483647i, true, 1u));

var<private> global3: vec4<f32>;

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global1 = ~(~(~(~(vec3<u32>(21954u, global1.x, 1933u) ^ vec3<u32>(12144u, 3717u, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(110f, 1083f);
}

